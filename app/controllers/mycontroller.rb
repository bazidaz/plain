class MyController < ApplicationController
    # POST /ajax/sum
    def ajax_sum
        num1 = params["num1"].to_i
        num2 = params["num2"].to_i
        # Do something with input parameter and respond as JSON with the output
        result = num1 + num2

        respond_to do |format|
              format.json {render :json => {:result => result}}
        end
    end
end