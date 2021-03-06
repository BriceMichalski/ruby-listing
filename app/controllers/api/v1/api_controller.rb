class Api::V1::ApiController < Api::ApiController

    #Security Token Checker
    def checkToken 
        user = User.find_by(auth_token: request.headers["token"])
        if user.nil?
            render json: {error: '401 Unauthorized'} , status: 401
        else
            return true
        end 
    end

    #product methods
    before_action :checkToken
    def productAll
        products = Product.all
        render json: {success: true, products: products} , status: 200 
    end

    before_action :checkToken
    def productSingle
        product = Product.find(params[:id])
        render json: {success: true, products: [product]} , status: 200 
    end

    before_action :checkToken
    def createProduct
        user = User.find_by(auth_token: request.headers["token"])
        product = Product.new(product_params(user.id))
        if product.save
            render json: {success: true, products: [product]} , status: 200 
        else
            render json: {success: false, error: 'On ne sait pas'} , status: 500
        end
    end 
    
    #category methods
    before_action :checkToken
    def categoryAll
        categories = Category.all
        render json: {success: true, categories: categories} , status: 200 
    end

    #user methods
    before_action :checkToken
    def profile
        user = User.find_by(auth_token: request.headers["token"])
        render json: {success: true, user: user } , status: 200 
    end   
    
    def product_params(user_id)
        params.require(:product).permit(
          :title,
          :description,
          :price,
          :category_id,
          :picture,
        ).merge(user_id: user_id)
      end
end