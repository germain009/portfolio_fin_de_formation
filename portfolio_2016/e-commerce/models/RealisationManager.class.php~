<?php
class RealisationManager
{
	private $link;

	public function __construct($link)
	{
		$this->link = $link;
	}

	


    public function getAll()
	{
		$list = [];
		$query = "SELECT * FROM realisation";
		$res = mysqli_query($this->link, $query);
		while ($lsCategory = mysqli_fetch_object($res, "Realisation", [$this->link]))
	    
			$list[] = $lsCategory;
		
		return $list;
	}

	
}
?>
