<?php

class UserIdentity extends CUserIdentity
{
	private $_id;

	public function authenticate()
	{
		//$username=strtolower($this->username);
		//$user=User::model()->find('LOWER(username)=?', array($username));
		$user=User::model()->find('LOWER(username)=?',array(strtolower($this->username)));
		//$user=User::model()->find($this->username);
		$passHash = $user->hashPassword($this->password);
		if($user===null)
			 $this->errorCode=self::ERROR_USERNAME_INVALID;
		else if(CPasswordHelper::verifyPassword($passHash, $user->password))
			$this->errorCode=self::ERROR_PASSWORD_INVALID;
		else {
			$this->_id=$user->id;
			$this->username=$user->username;
			$this->errorCode=self::ERROR_NONE;
		}
		return $this->errorCode==self::ERROR_NONE;
		// $users=array(
		// 	// username => password
		// 	'demo'=>'demo',
		// 	'admin'=>'admin',
		// );
		// if(!isset($users[$this->username]))
		// 	$this->errorCode=self::ERROR_USERNAME_INVALID;
		// elseif($users[$this->username]!==$this->password)
		// 	$this->errorCode=self::ERROR_PASSWORD_INVALID;
		// else
		// 	$this->errorCode=self::ERROR_NONE;
		//!$user->validatePassword($passHash) - Почему не работает при вызове но работает на прямую ??????

	}

	public function getId()
    {
        return $this->_id;
    }
}