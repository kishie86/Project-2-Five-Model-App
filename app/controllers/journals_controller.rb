class JournalsController < ApplicationController
    def index
        @journals = Journal.all
    end

    def show
        @journal = Journal.find(params[:id])
    end

    def new
        @journal = Journal.new
    end

    def create
        # @journal = Journal.create(journal_params)

        # redirect_to journals_path

        @journal = Journal.new(journal_params)

        if @journal.save
          redirect_to journal_path(@journal)
        else
          render :new
        end
    end

    def edit
        @journal = Journal.find(params[:id])
    end

    def update
        @journal = Journal.find_by(id: params[:id])
        if @journal.update(journal_params)
            redirect_to journal_path(@journal)
        else
            render :edit
        end
    end

    def destroy
        @journal = Journal.find_by(id: params[:id])
        @journal.delete

        redirect_to journals_path
    end

    private
    def journal_params
        params.require(:journal).permit(:name, :date, :title, :content, :user_id)
    end
end
