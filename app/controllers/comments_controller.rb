class CommentsController < ApplicationController
  
  
  
  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
end
    def create
      @todo = Todo.find(params[:todo_id])
      @comment = @todo.comments.create(comment_params)
      redirect_to todo_path(@todo)
    end

    def destroy
      @todo = Todo.find(params[:todo_id])
      @comment = @todo.comments.find(params[:id])
      @comment.destroy
      redirect_to todo_path(@todo), status: 303
    end
  
    private
      def comment_params
        params.require(:comment).permit(:note, :status)
      end
  end
  