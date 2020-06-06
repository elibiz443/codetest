module App
	module Main
		class Content
			def page_content(content)
				@content = "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas consectetur malesuada velit, sit amet porta magna
		  	maximus nec. Aliquam aliquet tincidunt enim vel rutrum. Ut augue lorem, rutrum et turpis in, molestie mollis nisi. Ut dapibus erat
		  	eget felis pulvinar, ac vestibulum augue bibendum. Quisque sagittis magna nisi. Sed aliquam porttitor fermentum. Nulla consequat
		  	justo eu nulla sollicitudin auctor. Sed porta enim non diam mollis, a ullamcorper dolor molestie. Nam eu ex non nisl viverra
		  	hendrerit. Donec ante augue, eleifend vel eleifend quis, laoreet volutpat ipsum. Integer viverra aliquam nulla, ac rutrum dui
		  	sodales nec.</p>

				<p>Sed turpis enim, porttitor nec maximus sed, luctus pretium elit. Sed sodales imperdiet velit, vitae viverra erat commodo non.
				Nunc porttitor risus sit amet quam faucibus, et luctus ex fringilla. Mauris quis urna non lacus tempor iaculis vitae quis dolor.
				Nam vitae pulvinar lacus, quis varius erat. Etiam lobortis orci vitae elementum tempor. Praesent convallis euismod enim vel
				vestibulum. Proin vitae eros vitae nisi cursus dapibus vitae at ipsum. Phasellus sed tempor eros, non scelerisque nunc. Nullam
				condimentum ex ultrices, ultrices ante sit amet, rhoncus nibh. Aliquam fermentum vulputate fringilla. Ut risus orci, pharetra
				eu tellus vel, fringilla feugiat dolor.</p>

				<p>Nunc quis elit quam. Sed aliquet, nibh ut sagittis egestas, lorem tortor laoreet diam, non maximus lectus dolor dignissim eros. 
				Sed vehicula mi id aliquet aliquam. Vestibulum sed lacus et neque dictum convallis in vitae mauris. Etiam varius augue vel mattis 
				tempor. Curabitur mattis facilisis metus, tempus consectetur quam aliquam sed. Mauris velit orci, efficitur sit amet nisl in, 
				finibus dictum elit. In lectus augue, elementum eu sapien sed, auctor tincidunt urna.</p>

				<p>Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer lacinia accumsan velit. Duis vel 
				facilisis libero. Cras consequat sit amet mauris ut ultrices. Ut pulvinar sit amet odio sit amet pretium. Nullam tortor ligula, 
				consequat non nisl vitae, rutrum placerat est. Sed finibus interdum justo vel placerat. Cras varius tortor sed justo tempus 
				scelerisque. Praesent facilisis ex vitae iaculis iaculis. Sed consectetur a lectus non condimentum. Etiam id lacus a nulla cursus 
				laoreet. Vivamus ipsum purus, sodales vel metus varius, viverra mollis justo. Nulla facilisi. Vivamus volutpat nunc elit, quis 
				sollicitudin velit ornare sit amet.</p>

				<p>Nullam fringilla nisi nunc, vitae accumsan tortor luctus quis. Sed facilisis, est ut eleifend sagittis, felis dolor pellentesque 
				lectus, in congue purus orci non nunc. Nunc finibus eu metus et volutpat. Integer hendrerit tortor et tellus euismod vulputate. 
				Aliquam erat volutpat. Aenean gravida justo in risus feugiat, ut suscipit tortor ullamcorper. Nam a sapien dictum, vestibulum eros 
				vitae, sodales turpis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed ultricies at elit et rutrum. Sed placerat 
				erat quis condimentum convallis. Duis ornare magna nec ante faucibus malesuada. Duis a erat sed sapien semper eleifend. Mauris 
				consequat nibh sollicitudin mi euismod, non ultricies lectus bibendum. Cras a erat libero. Aliquam nisl ipsum, scelerisque at 
				risus a, hendrerit vestibulum sapien. Proin luctus diam eu mi lobortis molestie id vel ante.</p>"

				# Due to addition of paragraph <p> tag, the start and end to the first highlight will increase by 3
				first_highlight = "<span style='background-color:#f157f1' title='Foo'>#{@content[23..38]}</span>"
				@content = @content.sub!(@content[23..38], first_highlight)

				# Due to addition of paragraph <p> tag & previous styling, the start and end to the second highlight will
				# increase by 61
				second_highlight = "<span style='background-color:#ff4500' title='Bar'>#{@content[134..153]}</span>"
				@content = @content.sub!(@content[134..153], second_highlight)

				# Due to addition of paragraph <p> tag & previous styling, the start and end to the second highlight will
				# increase by 61 to the start and 119 to the end
				third_highlight = "<span style='background-color:#00ffff' title='Baz'>#{@content[111..217]}</span>"
				@content = @content.sub!(@content[111..217], third_highlight)

				return @content
			end

			def show_page_content
				page_content(@content)
			end

		end
	end
end

showcontent = App::Main::Content.new
$display_info = showcontent.show_page_content