ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #

    section "Recent Posts", :priority => 1 do
     table_for Post.order("id desc").limit(15) do
       column :id
	   column :"Post Title",:title do |post|
	     link_to post.title,[:admin,post]
	   end
       column :category,:sortable => :category
	   column :crated_at
	 end
	 strong (link_to "Show all Posts",:admin_posts)
    end
    

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
