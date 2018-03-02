<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblCardsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_cards', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('card_cate')->nullable()->index();
            $table->string('card_des_en')->index()->nullable();
            $table->string('card_des_kh')->index();
            $table->text('image')->nullable();
            $table->text('content')->nullable();
            $table->string('in_putter')->nullable();
            $table->enum('status', ['ACTIVE', 'INACTIVE'])->default('ACTIVE');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tbl_cards');
    }
}
