extends KinematicBody


func _ready():
	var bone_attachments =  $Graphics/Armature/Skeleton.get_children()
	
	for bone_attachment in bone_attachments:
		for child in bone_attachment.get_children():
			if child is HitBox:
				child.connect("hurt",self,"hurt")
			pass


func hurt(damage: int, dir: Vector3):
	print("we got hit")
	pass