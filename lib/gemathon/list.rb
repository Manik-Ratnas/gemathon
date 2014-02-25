require 'github_api'

module Gemathon
   
    class Gemathon::List
      attr_reader :connection,:org_name
      def initialize connection, org_name,options = {}
        @org_name = org_name
        @connection = connection 
      end

      def list
        @list_repos=[]
        hsh_details= {}
        @org_name.each do |org_name|
        @list_repos=@connection.repos.list(auto_pagination: true,user:org_name)
          @list_repos.map(&:name).each do |repo|
            repo_details=@connection.repos.get(org_name,repo)
            hsh_details[repo]={:description=>repo_details["description"],:url=>repo_details["html_url"],:language=>repo_details["language"]}
          end
        end
       hsh_details
      end

    end
  end  