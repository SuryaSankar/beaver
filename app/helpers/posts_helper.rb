module PostsHelper
=begin
	require 'rubygems'
	require 'redcarpet'
	class PygmentizeHTML < Redcarpet::Render::HTML
		def block_code(code, language)
			require 'pygmentize'
			require 'pygments.rb'
			#Pygmentize.process(code, language)
			Pygments.highlight(code, :lexer => language)
		end
	end
=end

	def markdown(text)
		renderer=Redcarpet::Render::HTML.new(prettify: true)
		extensions={ fenced_code_blocks: true }
		#renderer2=PygmentizeHTML
		Redcarpet::Markdown.new(renderer, extensions).render text	
	end

end
