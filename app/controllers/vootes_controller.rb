class VootesController < InheritedResources::Base

  private

    def voote_params
      params.require(:voote).permit(:number, :id_const, :id_com)
    end
end

