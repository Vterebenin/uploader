class CreateAudioUploaders < ActiveRecord::Migration[5.2]
  def change
    create_table :audio_uploaders do |t|

      t.timestamps
    end
  end
end
