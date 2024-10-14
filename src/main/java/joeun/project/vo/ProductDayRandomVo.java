package joeun.project.vo;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import joeun.project.dto.ReferTotalDto;

public class ProductDayRandomVo {

    private String user_id;
    private Integer bolgguri_id; // 추가된 부분
    private List<DayAssignment> dayAssignments;

    // Getter 및 Setter 메서드
    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public Integer getBolgguri_id() {
        return bolgguri_id;
    }

    public void setBolgguri_id(Integer bolgguri_id) {
        this.bolgguri_id = bolgguri_id;
    }

    public List<DayAssignment> getDayAssignments() {
        return dayAssignments;
    }

    public void setDayAssignments(List<DayAssignment> dayAssignments) {
        this.dayAssignments = dayAssignments;
    }

    // 중복 없이 랜덤으로 제품을 할당하는 메서드
    public static ProductDayRandomVo createWithRandomAssignments(String userId, ArrayList<ReferTotalDto> availableProducts, int nights) {
        ProductDayRandomVo productDayRandomVo = new ProductDayRandomVo();
        productDayRandomVo.setUser_id(userId);

        // 사용 가능한 제품 리스트가 비어 있는지 확인
        if (availableProducts == null || availableProducts.isEmpty()) {
            System.out.println("availableProducts 리스트가 비어 있습니다."); // 디버그 용도
            return productDayRandomVo;
        }

        Collections.shuffle(availableProducts); // 제품 리스트를 섞음

        // 섞인 리스트에서 첫 번째 제품의 bolgguri_id를 설정
        productDayRandomVo.setBolgguri_id(availableProducts.get(0).getBolgguri_id());

        // 일차별 제품 할당을 저장할 Map 생성
        Map<Integer, List<ReferTotalDto>> dayAssignmentsMap = new LinkedHashMap<>();
        for (int i = 1; i <= nights; i++) {
            dayAssignmentsMap.put(i, new ArrayList<>());
        }

        int productsPerDay = 4; // 하루에 할당할 제품 수
        int productIndex = 0;
        
        // 중복 방지를 위해 사용된 제품을 추적하는 Set
        Set<ReferTotalDto> usedProducts = new HashSet<>();

        // 제품을 각 일차에 할당
        for (int day = 1; day <= nights; day++) {
            List<ReferTotalDto> dailyAssignments = dayAssignmentsMap.get(day);
            for (int i = 0; i < productsPerDay; i++) {
                // 모든 제품이 할당되면 조기 종료
                if (productIndex >= availableProducts.size()) break;
                
                ReferTotalDto product = availableProducts.get(productIndex++);
                
                // 제품이 이미 사용되었다면 다음 제품으로 이동
                while (usedProducts.contains(product) && productIndex < availableProducts.size()) {
                    product = availableProducts.get(productIndex++);
                }
                
                // 사용되지 않은 제품일 경우 할당하고 사용된 제품 Set에 추가
                if (!usedProducts.contains(product)) {
                    dailyAssignments.add(product);
                    usedProducts.add(product);
                }
            }
        }

        // Map 엔트리를 VO 형식으로 변환
        List<DayAssignment> dayAssignments = new ArrayList<>();
        for (Map.Entry<Integer, List<ReferTotalDto>> entry : dayAssignmentsMap.entrySet()) {
            DayAssignment dayAssignment = new DayAssignment();
            dayAssignment.setDay(String.valueOf(entry.getKey()));
            dayAssignment.setProducts(entry.getValue());
            dayAssignments.add(dayAssignment);
        }

        productDayRandomVo.setDayAssignments(dayAssignments);

        return productDayRandomVo;
    }

    // 모든 값을 표시하기 위해 toString() 메서드를 재정의
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ProductDayRandomVo {");
        sb.append("user_id='").append(user_id).append('\'');
        sb.append(", bolgguri_id='").append(bolgguri_id).append('\'');
        sb.append(", dayAssignments=").append(dayAssignments);
        sb.append('}');
        return sb.toString();
    }

    // 내부 클래스 DayAssignment
    public static class DayAssignment {
        private String day;
        private List<ReferTotalDto> products;

        // Getter 및 Setter 메서드
        public String getDay() {
            return day;
        }

        public void setDay(String day) {
            this.day = day;
        }

        public List<ReferTotalDto> getProducts() {
            return products;
        }

        public void setProducts(List<ReferTotalDto> products) {
            this.products = products;
        }

        // 모든 값을 표시하기 위해 toString() 메서드를 재정의
        @Override
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("DayAssignment {");
            sb.append("day='").append(day).append('\'');
            sb.append(", products=").append(products);
            sb.append('}');
            return sb.toString();
        }
    }
}