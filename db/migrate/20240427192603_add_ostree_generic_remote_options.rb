class AddOstreeGenericRemoteOptions < ActiveRecord::Migration[6.1]
  def up
    Katello::RootRepository.where(:content_type => 'ostree').update_all(:generic_remote_options => '{"exclude_refs":[],"include_refs":[]}')
  end

  def down
    Katello::RootRepository.where(:content_type => 'ostree').update_all(:generic_remote_options => null)
  end
end
