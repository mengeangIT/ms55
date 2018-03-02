<?php

namespace App\Http\Middleware;

use Closure;

class CheckTrain
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        //return $next($request);
        \DB::beginTransaction();
        try {
            $response = $next($request);
        } catch (\Exception $e) {
            \DB::rollBack();
            throw $e;
        }

       // if ($response instanceof \Response && $response->getStatusCode() > 399) {
        if ( $response->getStatusCode() > 399) {
            \DB::rollBack();

        } else {

            \DB::commit();
        }

        return $response;
    }
}
