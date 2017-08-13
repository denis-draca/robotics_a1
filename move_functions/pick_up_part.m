function [ myRobot ] = pick_up_part( part_pose, myRobot )

vertical_transform = transl(0, 0, 0.8);
rotate_x_90 = trotx(pi);

first_step = part_pose * vertical_transform * rotate_x_90;

move_to_pose(first_step, myRobot);

move_to_pose(myRobot.fkine(myRobot.getpos)* transl(0, 0 , 0.8), myRobot);


end

