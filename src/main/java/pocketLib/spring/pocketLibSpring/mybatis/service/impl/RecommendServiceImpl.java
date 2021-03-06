package pocketLib.spring.pocketLibSpring.mybatis.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import pocketLib.spring.pocketLibSpring.mybatis.model.Book;
import pocketLib.spring.pocketLibSpring.mybatis.model.BookInterested;
import pocketLib.spring.pocketLibSpring.mybatis.model.BookRead;
import pocketLib.spring.pocketLibSpring.mybatis.service.RecommendService;

@Service
@Slf4j
public class RecommendServiceImpl implements RecommendService{
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<Book> getPklibRecommendList() throws Exception {
		List<Book> result = null;
        try {
            result = sqlSession.selectList("RecommendMapper.selectList");
           
        } catch (NullPointerException e) {
           log.error(e.getLocalizedMessage());
            throw new Exception("조회된 데이터가 없습니다.");
        } catch (Exception e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("데이터 조회에 실패했습니다.");
        } 
        return result;
	}


	@Override
	public List<Book> getAllCountby_reg_date(BookRead input) throws Exception {
		List<Book> result = null;

		try {
			result = sqlSession.selectList("RecommendMapper.selectAllCountbyReg_date", input);
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}

		return result;
	}

	@Override
	public List<Book> getselectRandombyCate(Book input) throws Exception {
		List<Book> result = null;

		try {
			result = sqlSession.selectList("RecommendMapper.selectRandombyCate", input);
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}

		return result;
	}

	@Override
	public Book getTopOne(BookRead input) throws Exception {
		Book result = null;
		try {
			result = sqlSession.selectOne("RecommendMapper.selectTopOne", input);
			if (result == null) {
				throw new NullPointerException("result=null");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}


	@Override
	public List<Book> getselectInterestedCate(Book input) throws Exception {
		List<Book> result = null;

		try {
			result = sqlSession.selectList("RecommendMapper.selectinterestedCate", input);
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}

		return result;
	}

	@Override
	public Book getInterestedOne(BookInterested input) throws Exception {
		Book result = null;
		try {
			result = sqlSession.selectOne("RecommendMapper.selectinterestedOne", input);
			if (result == null) {
				throw new NullPointerException("result=null");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}


	@Override
	public List<Book> getselectValueList(Book input) throws Exception {
		List<Book> result = null;

		try {
			result = sqlSession.selectList("RecommendMapper.selectValueList", input);
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}

		return result;
	}
	
}
