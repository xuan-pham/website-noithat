<?php

namespace App\Http\Requests\category;

use Illuminate\Foundation\Http\FormRequest;

class StoreRequest extends FormRequest
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
            'name' => 'required|unique:category|max:255'
        ];
    }
    public function messages()
    {
        return [
            'name.required' => 'không được để trống!',
            'name.unique'=>'danh mục đã tồn tại',
        ];
    }
}
