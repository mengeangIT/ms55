<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Backpack\CRUD\CrudTrait;
use Illuminate\Support\Facades\File;
use Intervention\Image\Facades\Image;

class Customer extends Model
{
    use CrudTrait;

    /*
   |--------------------------------------------------------------------------
   | GLOBAL VARIABLES
   |--------------------------------------------------------------------------
   */

    protected $table = 'customers';
    protected $primaryKey = 'id';
    public $timestamps = true;
    // protected $guarded = ['id'];
    protected $fillable = ['name', 'sex', 'image', 'note'];
    // protected $hidden = [];
    // protected $dates = [];

    /*
    |--------------------------------------------------------------------------
    | FUNCTIONS
    |--------------------------------------------------------------------------
    */
    public function setImageAttribute($value)
    {
        $attribute_name = "image";
        $disk = "public/";

        // if the image was erased
        if (($value == null && $this->id == 0) || ($this->id > 0 && $value != null && starts_with($value, 'data:image'))) {

            // delete the image from disk
            if (File::exists($this->image)) File::delete($this->image);

            // set null in the database column
            $this->attributes[$attribute_name] = null;
        }

        // if a base64 was sent, store it in the db
        if (starts_with($value, 'data:image')) {
            //dd(file_get_contents($value));
            $filename = rand(11111, 99999) . '_' . time() . '_' . rand(1000, 5000) . '.png';
            Image::make(file_get_contents($value))->save("uploads/images/customers/$filename");

            $this->attributes[$attribute_name] = "uploads/images/customers/$filename";
        }
    }

    public static function boot()
    {
        parent::boot();
        static::deleting(function ($obj) {
            //\Storage::disk('public_folder')->delete($obj->image);
            if (File::exists($obj->image)) File::delete($obj->image);
        });
    }
    /* public function setImageAttribute($value)
     {
         $attribute_name = "image";
         $disk = "public";
         $destination_path = "uploads";

         // if the image was erased
         if ($value==null) {
             // delete the image from disk
             \Storage::disk($disk)->delete($this->{$attribute_name});

             // set null in the database column
             $this->attributes[$attribute_name] = null;
         }

         // if a base64 was sent, store it in the db
         if (starts_with($value, 'data:image'))
         {
             // 0. Make the image
             $image = \Image::make($value);
             // 1. Generate a filename.
             $filename = md5($value.time()).'.jpg';
             // 2. Store the image on disk.
             \Storage::disk($disk)->put($destination_path.'/'.$filename, $image->stream());
             // 3. Save the path to the database
             $this->attributes[$attribute_name] = $destination_path.'/'.$filename;
         }
     }*/
    /*
    |--------------------------------------------------------------------------
    | RELATIONS
    |--------------------------------------------------------------------------
    */

    /*
    |--------------------------------------------------------------------------
    | SCOPES
    |--------------------------------------------------------------------------
    */

    /*
    |--------------------------------------------------------------------------
    | ACCESORS
    |--------------------------------------------------------------------------
    */

    /*
    |--------------------------------------------------------------------------
    | MUTATORS
    |--------------------------------------------------------------------------
    */
}
