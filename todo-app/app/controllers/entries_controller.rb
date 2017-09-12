class EntriesController < ApplicationController
    def index
        @entries = Entry.all
    end

    def show
        @entry = Entry.find_by(id: params[:id])
    end

    def new

    end

    def create
        entry = params['entry']
        Entry.create(
            title: entry[:title],
            description: entry[:description]
        )
        redirect_to entries_path
    end

    def update
        entry = params['entry']
        Entry.update(
            params[:id],
            title: entry[:title],
            description: entry[:description]
        )
        redirect_to entries_path            
    end

    def destroy
        Entry.destroy(params['id'])
        redirect_to entries_path
    end
end
