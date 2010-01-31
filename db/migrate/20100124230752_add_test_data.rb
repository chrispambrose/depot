class AddTestData < ActiveRecord::Migration
  def self.up
  	Product.delete_all
  	Product.create(
  		:title => 'Iorich',
  		:description =>
  		%{<p>
			Brust's enjoyable 12th Vlad Taltos adventure (after 2008's Jhegaala) brings the former organized
			crime figure back to his hometown, where he must avoid the many assassins still on the lookout for
			him. As Vlad tries to help Aliera e'Kieron, an old friend recently fallen from high places, he
			uncovers an increasingly complex web of intrigue aimed at creating an illegal drug trade. To thwart
			the plot, Vlad must navigate among the Dragaeran Empress and her associates, his ex-wife, his former
			associate Krager, and other schemers. Named for the Dragaeran clan of lawyers and judges, this
			installment has less action and more inscrutable dialogue than previous novels, providing some new
			insight into the interactions of the 17 clans. Newcomers will be a bit lost, but Brust fans will
			find a lot to think about as well as hints of larger plots to come.
		</p>},
		:image_url => '/images/iorich_s.jpg',
		:price => 16.49)
		
  	Product.create(
  		:title => 'Changes ',
  		:description =>
  		%{<p>
			Long ago, Susan Rodriguez was Harry Dresden's lover-until she was attacked by his enemies, leaving
			her torn between her own humanity and the bloodlust of the vampiric Red Court. Susan then
			disappeared to South America, where she could fight both her savage gift and those who cursed her
			with it.</p>
		<p>
			Now Arianna Ortega, Duchess of the Red Court, has discovered a secret Susan has long kept, and
			she plans to use it-against Harry. To prevail this time, he may have no choice but to embrace the
			raging fury of his own untapped dark power. Because Harry's not fighting to save the world...</p>
		<p>
			He's fighting to save his child. 
		</p>},
		:image_url => '/images/changes_s.jpg',
		:price => 14.97)		
  	
  end

  def self.down
  	Product.delete_all
  end
end
