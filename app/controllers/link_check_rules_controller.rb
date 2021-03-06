# The Supplejack Worker code is Crown copyright (C) 2014, New Zealand Government, 
# and is licensed under the GNU General Public License, version 3. 
# See https://github.com/DigitalNZ/supplejack_worker for details. 
# 
# Supplejack was created by DigitalNZ at the National Library of NZ
# and the Department of Internal Affairs. http://digitalnz.org/supplejack

class LinkCheckRulesController < ApplicationController

  def index
    @link_check_rules = params[:link_check_rule].present? ? LinkCheckRule.where(params[:link_check_rule]) : LinkCheckRule.all
    render json: @link_check_rules
  end

  def show
    @link_check_rule = LinkCheckRule.find(params[:id])
    render json: @link_check_rule
  end

  def destroy
    @link_check_rule = LinkCheckRule.find(params[:id])
    render json: @link_check_rule.destroy
  end

  def create
    @link_check_rule = LinkCheckRule.create(params[:link_check_rule])
    render json: @link_check_rule
  end

  def update
    @link_check_rule = LinkCheckRule.find(params[:id])
    @link_check_rule.update_attributes(params[:link_check_rule])
    render json: @link_check_rule
  end
end