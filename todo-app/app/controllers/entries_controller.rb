class EntriesController < ApplicationController
    def index
        @entries = Entry.all
    end

    def show
        @entry = Entry.find_by(id: params[:id])
    end

    def create
        entry = params['entry']
        Entry.create(
            title: Entry[:title],
            description: Entry[:description]
        )
        redirect_to entries_path
    end

    def update
        Entry.create(
            params[:id],
            title: Entry[:title],
            description: Entry[:description]
        )
        redirect_to entries_path            
    end

    def destroy
        Entry.destroy(params['id'])
        redirect_to entries_path
    end
end
