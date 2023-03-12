package com.devsuperior.dslearnbds.entities.pk;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Embeddable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.devsuperior.dslearnbds.entities.Offer;
import com.devsuperior.dslearnbds.entities.User;

@Embeddable
public class EnrollmentPK implements Serializable{
	private static final long serialVersionUID = 1L;

	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;
	
	@ManyToOne
	@JoinColumn(name = "offer_id")
	private Offer Offer;
	
	public EnrollmentPK() {
	}
	
	public EnrollmentPK(User user, com.devsuperior.dslearnbds.entities.Offer offer) {
		super();
		this.user = user;
		Offer = offer;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Offer getOffer() {
		return Offer;
	}

	public void setOffer(Offer offer) {
		Offer = offer;
	}

	@Override
	public int hashCode() {
		return Objects.hash(Offer, user);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		EnrollmentPK other = (EnrollmentPK) obj;
		return Objects.equals(Offer, other.Offer) && Objects.equals(user, other.user);
	}
	
	
}
















