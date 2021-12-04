<?php

namespace App\Http\Requests\changepw;

use Illuminate\Foundation\Http\FormRequest;

class updateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'pw_old' => 'required',
            'pw_new' => 'required',
            'pw_confir' => 'required|same:pw_new',
        ];
    }
    public function messages()
    {
        return [
            'pw_old.required' => 'không được để trống!',
            'pw_new.required' => 'không được để trống!',
            'pw_confir.required' => 'không được để trống!',
            'pw_confir.same' => 'Mật khẩu không giống!',
        ];
    }
}
