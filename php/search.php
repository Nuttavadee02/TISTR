
<?php
$connect = mysqli_connect("localhost", "root", "12345678", "tistr");
$output = '';
if (isset($_POST["query"])) {
	$search = mysqli_real_escape_string($connect, $_POST["query"]);
	$query = "
	SELECT master.emp_id ,master.emp_name ,master.emp_job ,master.emp_agency ,master.emp_contact ,master.emp_email ,experties.ep_name ,publication.pbc_title , publication.pbc_institute ,publication.pbc_position
			FROM master
			INNER JOIN experties
			ON (master.emp_id=experties.emp_id)
			INNER JOIN publication
			ON (master.emp_id=publication.emp_id)
			WHERE emp_name LIKE '%" . $search . "%'
			OR emp_job LIKE '%" . $search . "%' 
			OR emp_agency LIKE '%" . $search . "%' 
			OR emp_contact LIKE '%" . $search . "%' 
			OR emp_email LIKE '%" . $search . "%'
			OR ep_name LIKE '%" . $search . "%'
			OR pbc_title LIKE '%" . $search . "%'
			OR pbc_institute LIKE '%" . $search . "%'
			OR pbc_position LIKE '%" . $search . "%'
	";
}

$result = mysqli_query($connect, $query);
if (mysqli_num_rows($result) > 0) {
	$output .= '<div class="table-responsive">
					<table class="table table-light table-striped table-hover" id="datatable">
					<thead class="thead" style="color: #fff; background-color: #007bff; border-color: #a1c5ec;">
                            <th scope="col" nowrap>ชื่อ</th>
                            <th scope="col" nowrap>ตำแหน่งงาน</th>
                            <th scope="col" nowrap>สังกัด</th>
                            <th scope="col" nowrap>ติดต่อ</th>
                            <th scope="col" nowrap>E-mail</th>
							<th scope="col" nowrap>ความเชี่ยวชาญ</th>
                        </thead>
						';
	while ($row = mysqli_fetch_array($result)) {
		$output .= '
			<tr>
				<td class="text-left" nowrap>' . $row["emp_name"] . '</td>
				<td class="text-left" nowrap>' . $row["emp_job"] . '</td>
				<td class="text-left" nowrap>' . $row["emp_agency"] . '</td>
				<td class="text-left" nowrap>' . $row["emp_contact"] . '</td>
				<td class="text-left" nowrap>' . $row["emp_email"] . '</td>
				<td class="text-left" nowrap>' . $row["ep_name"] . '</td>
			</tr>
		';
	}
	echo $output;
} else {
	echo '<center>';
	echo 'ไม่มีข้อมูล';
	echo '</center>';
}
