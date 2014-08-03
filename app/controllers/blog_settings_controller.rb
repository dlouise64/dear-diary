class BlogSettingsController < ApplicationController

  def edit
    @blog_setting = BlogSetting.first
  end

  def update
    @blog_setting = BlogSetting.find params[:id]
    if @blog_setting.update_attributes(blog_settings_params)
      redirect_to action: 'edit'
    end
  end

  private

  def blog_settings_params
    params.require(:blog_setting).permit(:blog_name)
  end
end