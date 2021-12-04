<?php

namespace App\Http\Requests\blog;

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
            'name' => 'required|unique:blog,name,' . request()->id,
            'content' => 'required',
            'id_blog' => 'required',
            'file_image' => 'required',
        ];
    }
    public function messages()
    {
        return [
            'name.required' => 'không được để trống!',
            'name.unique' => 'sản phẩm đã tồn tại',
            'content.required' => 'không được để trống!',
            'id_blog.required' => 'không được để trống!',
            'file_image.required' => 'không được để trống!',
        ];
    }
}
