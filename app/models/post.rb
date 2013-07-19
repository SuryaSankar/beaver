class Post < ActiveRecord::Base
end
=begin
require 'rubygems'
require 'redcarpet'
class Post < ActiveRecord::Base
	before_save :render_body

	private
	def render_body
		
		#renderer = Redcarpet::Render::HTML.new
		renderer = PygmentizeHTML
		extensions = {fenced_code_blocks: true}
		redcarpet = Redcarpet::Markdown.new(renderer, extensions)
		self.description = redcarpet.render self.description		
	end
end

class PygmentizeHTML < Redcarpet::Render::HTML
	def block_code(code, language)
		require 'pygmentize'
		Pygmentize.process(code, language)
	end
end
=end
