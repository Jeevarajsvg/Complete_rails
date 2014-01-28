require 'spec_helper'

  feature 'Deleting the project' do
    scenario 'Deleting the project' do
        FactoryGirl.create(:project,name:"TextMate 2")
        visit'/'
        click_link 'TextMate 2'
        click_link 'Delete Project'
        expect(page).to have_content("Project has been Deleted")
  end
end
