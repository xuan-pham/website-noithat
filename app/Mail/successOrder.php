<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class successOrder extends Mailable
{
    use Queueable, SerializesModels;
    public $successOrder;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($successOrder)
    {

        $this->successOrder = $successOrder;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->subject('Cửa hàng Ogani xin cảm ơn')
            ->view('mail.successOrder');
    }
}
