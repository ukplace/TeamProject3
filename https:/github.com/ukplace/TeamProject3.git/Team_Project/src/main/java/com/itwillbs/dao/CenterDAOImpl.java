package com.itwillbs.dao;

import java.net.MulticastSocket;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.FaqDTO;
import com.itwillbs.domain.NoticeDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.QnaDTO;

@Repository
public class CenterDAOImpl implements CenterDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="com.itwillbs.mapper.CenterMapper";

	@Override
	public void insertQna(QnaDTO qnaDTO) {
		System.out.println("CenterDAOImpl insertQna()");
		
				sqlSession.insert(namespace+".insertQna", qnaDTO);
	}

	@Override
	public Integer getMaxQna() {
		
		return sqlSession.selectOne(namespace+".getMaxQna");
	}

	@Override
	public List<QnaDTO> getQnaList(PageDTO pageDTO) {
		
		return sqlSession.selectList(namespace+".getQnaList", pageDTO);
	}

	@Override
	public Integer getQnaCount() {
		
		return sqlSession.selectOne(namespace+".getQnaCount");
		
	}
	@Override
	public QnaDTO getQnaDetail(QnaDTO qnaDTO) {
		System.out.println("centerDAO getQnaDetail");
		return sqlSession.selectOne(namespace+".getQnaDetail", qnaDTO);
	}

	public Integer getIncrementNum() {

		return sqlSession.selectOne(namespace+".getIncrementNum");
	}
	
	@Override
	public void deleteQna(QnaDTO qnaDTO) {
		
		sqlSession.delete(namespace+".deleteQna", qnaDTO);
		
	}
	
	@Override
	public void insertReplyAricle(QnaDTO qnaDTO) {
		
		sqlSession.update(namespace+".setQna_re_seq",qnaDTO);
		
		sqlSession.insert(namespace+".insertReplyAricle",qnaDTO);
		
		
	}

	@Override
	public void insertFaq(FaqDTO FaqDTO) {
		
		sqlSession.insert(namespace+".insertFaq", FaqDTO);
		
	}

	@Override
	public List<FaqDTO> getFaqList(PageDTO pageDTO) {
		
		return sqlSession.selectList(namespace+".getFaqList", pageDTO);
	}

	@Override
	public int getFaqCount() {
		
		return sqlSession.selectOne(namespace+".getFaqCount");
	}

	@Override
	public FaqDTO getFaqDetail(FaqDTO faqDTO) {
		
		return sqlSession.selectOne(namespace+".getFaqDetail", faqDTO);
	}

	@Override
	public void faq_update(FaqDTO faqDTO) {
		sqlSession.update(namespace+".updateFaq", faqDTO);
		
	}


	@Override
	public void deleteFaq(FaqDTO faqDTO) {
		sqlSession.delete(namespace+".deleteFaq",faqDTO);
		
	}
	
	//-------------------------------------notice-------------------------------
	 
	
	@Override
	public void insertNotice(NoticeDTO noticeDTO) {
		System.out.println(noticeDTO.getNotice_subject());
		sqlSession.insert(namespace+".insertNotice", noticeDTO);
	}

	@Override
	public List<NoticeDTO> getNoticeList(PageDTO pageDTO) {
		
		
		return sqlSession.selectList(namespace+".getNoticeList", pageDTO);
	}

	@Override
	public int getNoticeCount() {

		return sqlSession.selectOne(namespace+".getNoticeCount");
	}

	@Override
	public NoticeDTO getNoticeDetail(NoticeDTO noticeDTO) {

		return sqlSession.selectOne(namespace+".getNoticeDetail",noticeDTO);
	}

	@Override
	public void updateNotice(NoticeDTO noticeDTO) {
		
		sqlSession.update(namespace+".updateNotice", noticeDTO);
	}

	@Override
	public void deleteNotice(NoticeDTO noticeDTO) {

		sqlSession.delete(namespace+".deleteNotice", noticeDTO);
	}

	


	
}
