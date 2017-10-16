module Admin::NavigationHelper
  def breadcrumbs(links = [], add_home = true)
    links = [links].flatten
    
    links.unshift({
      url: admin_root_path,
      text: 'Home'
    }) if add_home

    page_title = links.last[:text]

    content_for(:breadcrumbs) do
      render 'admin/shared/navigation/breadcrumbs', breadcrumb_links: links, page_title: page_title
    end
  end
end
