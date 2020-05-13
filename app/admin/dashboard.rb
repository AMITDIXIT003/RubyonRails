ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
#    div class: "blank_slate_container", id: "dashboard_default_message" do
#      span class: "blank_slate" do
#        span I18n.t("active_admin.dashboard_welcome.welcome")
#        small I18n.t("active_admin.dashboard_welcome.call_to_action")
#      end
#    end

    # Here is an example of a simple dashboard with columns and panels.
    #

    section "Recent Posts", :priority => 1 do
     table_for Post.order("id desc").limit(15) do
       column :id
	   column :"Post Title",:title do |post|
	     link_to post.title,[:admin,post]
	   end
       column :category,:sortable => :category
	   column :created_at
	 end
	 strong (link_to "Show all Posts",:admin_posts)
    end
    
#categories

     section "Categories", :priority => 2 do
       table_for Category.order("id desc").limit(15) do
       column :id
	   column :"Blog Category",:name do |category|
	     link_to category.name,[:admin,category]
	   end
       column :name,:sortable => :name
	   column :created_at
	 end
	 strong (link_to "Show all Blog Categories",:admin_categories)
     end 


   # index as: :blog do
   #   title do |post|
   #     span post.title,      class: 'title'
   #     span post.created_at, class: 'created_at'
   #   end
   # end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
