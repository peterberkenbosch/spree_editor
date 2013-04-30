require 'spec_helper'

feature "Upload with CKEditor" do

  before do
    SpreeEditor::Config[:current_editor] = 'CKEditor'
  end

  context "visiting upload path" do
    it "needs an admin" do
      visit ckeditor.pictures_path
      expect(current_path).to eq "/login"
    end
  end

  context "visiting attachment_files path" do
    it "needs an admin" do
      visit ckeditor.attachment_files_path
      expect(current_path).to eq "/login"
    end
  end

end
