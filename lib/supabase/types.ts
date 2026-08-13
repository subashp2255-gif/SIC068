export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[]

export type Database = {
  // Allows to automatically instantiate createClient with right options
  // instead of createClient<Database, { PostgrestVersion: 'XX' }>(URL, KEY)
  __InternalSupabase: {
    PostgrestVersion: "14.15"
  }
  public: {
    Tables: {
      ai_conversations: {
        Row: {
          anonymous_session_id: string | null
          created_at: string
          id: string
          status: string
          title: string | null
          updated_at: string
          user_id: string | null
        }
        Insert: {
          anonymous_session_id?: string | null
          created_at?: string
          id?: string
          status?: string
          title?: string | null
          updated_at?: string
          user_id?: string | null
        }
        Update: {
          anonymous_session_id?: string | null
          created_at?: string
          id?: string
          status?: string
          title?: string | null
          updated_at?: string
          user_id?: string | null
        }
        Relationships: []
      }
      ai_messages: {
        Row: {
          content: string
          conversation_id: string
          created_at: string
          id: string
          role: string
        }
        Insert: {
          content: string
          conversation_id: string
          created_at?: string
          id?: string
          role: string
        }
        Update: {
          content?: string
          conversation_id?: string
          created_at?: string
          id?: string
          role?: string
        }
        Relationships: [
          {
            foreignKeyName: "ai_messages_conversation_id_fkey"
            columns: ["conversation_id"]
            isOneToOne: false
            referencedRelation: "ai_conversations"
            referencedColumns: ["id"]
          },
        ]
      }
      ai_preferences: {
        Row: {
          accessibility_needs: string[] | null
          adults: number | null
          budget_max: number | null
          budget_min: number | null
          budget_type: string | null
          children: number | null
          conversation_id: string
          created_at: string
          departure_city: string | null
          destinations: string[] | null
          duration_max: number | null
          duration_min: number | null
          end_date: string | null
          excluded_destinations: string[] | null
          faith: string | null
          food_preferences: string[] | null
          id: string
          journey_type: string | null
          pace_preference: string | null
          senior_citizens: number | null
          special_requirements: string | null
          start_date: string | null
          transport_preferences: string[] | null
          travel_month: string | null
          updated_at: string
        }
        Insert: {
          accessibility_needs?: string[] | null
          adults?: number | null
          budget_max?: number | null
          budget_min?: number | null
          budget_type?: string | null
          children?: number | null
          conversation_id: string
          created_at?: string
          departure_city?: string | null
          destinations?: string[] | null
          duration_max?: number | null
          duration_min?: number | null
          end_date?: string | null
          excluded_destinations?: string[] | null
          faith?: string | null
          food_preferences?: string[] | null
          id?: string
          journey_type?: string | null
          pace_preference?: string | null
          senior_citizens?: number | null
          special_requirements?: string | null
          start_date?: string | null
          transport_preferences?: string[] | null
          travel_month?: string | null
          updated_at?: string
        }
        Update: {
          accessibility_needs?: string[] | null
          adults?: number | null
          budget_max?: number | null
          budget_min?: number | null
          budget_type?: string | null
          children?: number | null
          conversation_id?: string
          created_at?: string
          departure_city?: string | null
          destinations?: string[] | null
          duration_max?: number | null
          duration_min?: number | null
          end_date?: string | null
          excluded_destinations?: string[] | null
          faith?: string | null
          food_preferences?: string[] | null
          id?: string
          journey_type?: string | null
          pace_preference?: string | null
          senior_citizens?: number | null
          special_requirements?: string | null
          start_date?: string | null
          transport_preferences?: string[] | null
          travel_month?: string | null
          updated_at?: string
        }
        Relationships: [
          {
            foreignKeyName: "ai_preferences_conversation_id_fkey"
            columns: ["conversation_id"]
            isOneToOne: true
            referencedRelation: "ai_conversations"
            referencedColumns: ["id"]
          },
        ]
      }
      ai_recommendations: {
        Row: {
          conversation_id: string
          created_at: string
          id: string
          match_score: number | null
          matched_features: string[] | null
          message_id: string | null
          package_id: string
          rank_position: number | null
          reason: string | null
          unmet_preferences: string[] | null
        }
        Insert: {
          conversation_id: string
          created_at?: string
          id?: string
          match_score?: number | null
          matched_features?: string[] | null
          message_id?: string | null
          package_id: string
          rank_position?: number | null
          reason?: string | null
          unmet_preferences?: string[] | null
        }
        Update: {
          conversation_id?: string
          created_at?: string
          id?: string
          match_score?: number | null
          matched_features?: string[] | null
          message_id?: string | null
          package_id?: string
          rank_position?: number | null
          reason?: string | null
          unmet_preferences?: string[] | null
        }
        Relationships: [
          {
            foreignKeyName: "ai_recommendations_conversation_id_fkey"
            columns: ["conversation_id"]
            isOneToOne: false
            referencedRelation: "ai_conversations"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "ai_recommendations_message_id_fkey"
            columns: ["message_id"]
            isOneToOne: false
            referencedRelation: "ai_messages"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "ai_recommendations_package_id_fkey"
            columns: ["package_id"]
            isOneToOne: false
            referencedRelation: "packages"
            referencedColumns: ["id"]
          },
        ]
      }
      categories: {
        Row: {
          created_at: string
          description: string | null
          display_order: number
          icon_name: string | null
          id: string
          image_url: string | null
          is_active: boolean
          name: string
          slug: string
          updated_at: string
        }
        Insert: {
          created_at?: string
          description?: string | null
          display_order?: number
          icon_name?: string | null
          id?: string
          image_url?: string | null
          is_active?: boolean
          name: string
          slug: string
          updated_at?: string
        }
        Update: {
          created_at?: string
          description?: string | null
          display_order?: number
          icon_name?: string | null
          id?: string
          image_url?: string | null
          is_active?: boolean
          name?: string
          slug?: string
          updated_at?: string
        }
        Relationships: []
      }
      destinations: {
        Row: {
          alt_text: string | null
          best_months: string | null
          category_badge: string | null
          city: string | null
          country: string | null
          created_at: string
          description: string | null
          faith_category: string | null
          id: string
          image_url: string | null
          is_active: boolean
          latitude: number | null
          longitude: number | null
          main_category: string | null
          name: string
          region: string | null
          slug: string
          spiritual_significance: string | null
          state: string | null
          updated_at: string
        }
        Insert: {
          alt_text?: string | null
          best_months?: string | null
          category_badge?: string | null
          city?: string | null
          country?: string | null
          created_at?: string
          description?: string | null
          faith_category?: string | null
          id?: string
          image_url?: string | null
          is_active?: boolean
          latitude?: number | null
          longitude?: number | null
          main_category?: string | null
          name: string
          region?: string | null
          slug: string
          spiritual_significance?: string | null
          state?: string | null
          updated_at?: string
        }
        Update: {
          alt_text?: string | null
          best_months?: string | null
          category_badge?: string | null
          city?: string | null
          country?: string | null
          created_at?: string
          description?: string | null
          faith_category?: string | null
          id?: string
          image_url?: string | null
          is_active?: boolean
          latitude?: number | null
          longitude?: number | null
          main_category?: string | null
          name?: string
          region?: string | null
          slug?: string
          spiritual_significance?: string | null
          state?: string | null
          updated_at?: string
        }
        Relationships: []
      }
      enquiries: {
        Row: {
          adults: number
          children: number
          consent: boolean
          created_at: string
          date_flexibility: string | null
          departure_city: string | null
          destination: string | null
          email: string | null
          end_date: string | null
          full_name: string
          id: string
          infants: number
          message: string | null
          package_id: string | null
          package_title: string | null
          phone: string
          phone_country_code: string | null
          preferred_contact_method: string | null
          preferred_contact_time: string | null
          preferred_month: string | null
          reference_number: string | null
          senior_citizens: number
          source: string | null
          special_assistance: string[] | null
          start_date: string | null
          status: string
          travel_timing: string | null
          updated_at: string
          user_id: string | null
          whatsapp_updates: boolean | null
        }
        Insert: {
          adults?: number
          children?: number
          consent?: boolean
          created_at?: string
          date_flexibility?: string | null
          departure_city?: string | null
          destination?: string | null
          email?: string | null
          end_date?: string | null
          full_name: string
          id?: string
          infants?: number
          message?: string | null
          package_id?: string | null
          package_title?: string | null
          phone: string
          phone_country_code?: string | null
          preferred_contact_method?: string | null
          preferred_contact_time?: string | null
          preferred_month?: string | null
          reference_number?: string | null
          senior_citizens?: number
          source?: string | null
          special_assistance?: string[] | null
          start_date?: string | null
          status?: string
          travel_timing?: string | null
          updated_at?: string
          user_id?: string | null
          whatsapp_updates?: boolean | null
        }
        Update: {
          adults?: number
          children?: number
          consent?: boolean
          created_at?: string
          date_flexibility?: string | null
          departure_city?: string | null
          destination?: string | null
          email?: string | null
          end_date?: string | null
          full_name?: string
          id?: string
          infants?: number
          message?: string | null
          package_id?: string | null
          package_title?: string | null
          phone?: string
          phone_country_code?: string | null
          preferred_contact_method?: string | null
          preferred_contact_time?: string | null
          preferred_month?: string | null
          reference_number?: string | null
          senior_citizens?: number
          source?: string | null
          special_assistance?: string[] | null
          start_date?: string | null
          status?: string
          travel_timing?: string | null
          updated_at?: string
          user_id?: string | null
          whatsapp_updates?: boolean | null
        }
        Relationships: [
          {
            foreignKeyName: "enquiries_package_id_fkey"
            columns: ["package_id"]
            isOneToOne: false
            referencedRelation: "packages"
            referencedColumns: ["id"]
          },
        ]
      }
      faqs: {
        Row: {
          answer: string
          category: string | null
          created_at: string
          display_order: number
          id: string
          is_active: boolean
          package_id: string | null
          question: string
          updated_at: string
        }
        Insert: {
          answer: string
          category?: string | null
          created_at?: string
          display_order?: number
          id?: string
          is_active?: boolean
          package_id?: string | null
          question: string
          updated_at?: string
        }
        Update: {
          answer?: string
          category?: string | null
          created_at?: string
          display_order?: number
          id?: string
          is_active?: boolean
          package_id?: string | null
          question?: string
          updated_at?: string
        }
        Relationships: [
          {
            foreignKeyName: "faqs_package_id_fkey"
            columns: ["package_id"]
            isOneToOne: false
            referencedRelation: "packages"
            referencedColumns: ["id"]
          },
        ]
      }
      favorites: {
        Row: {
          created_at: string
          id: string
          package_id: string
          user_id: string
        }
        Insert: {
          created_at?: string
          id?: string
          package_id: string
          user_id: string
        }
        Update: {
          created_at?: string
          id?: string
          package_id?: string
          user_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "favorites_package_id_fkey"
            columns: ["package_id"]
            isOneToOne: false
            referencedRelation: "packages"
            referencedColumns: ["id"]
          },
        ]
      }
      itinerary_days: {
        Row: {
          accessibility_note: string | null
          accommodation_name: string | null
          afternoon_description: string | null
          afternoon_title: string | null
          day_number: number
          description: string | null
          dress_code: string | null
          evening_description: string | null
          evening_title: string | null
          id: string
          important_timings: string | null
          location: string | null
          meals: string | null
          morning_description: string | null
          morning_title: string | null
          notes: string | null
          overview: string | null
          package_id: string
          packing_suggestions: string | null
          stay: string | null
          title: string
          transport: string | null
          travel_distance_km: number | null
          travel_duration: string | null
          visitor_note: string | null
          walking_distance_km: number | null
          walking_level: string | null
          weather: string | null
        }
        Insert: {
          accessibility_note?: string | null
          accommodation_name?: string | null
          afternoon_description?: string | null
          afternoon_title?: string | null
          day_number: number
          description?: string | null
          dress_code?: string | null
          evening_description?: string | null
          evening_title?: string | null
          id?: string
          important_timings?: string | null
          location?: string | null
          meals?: string | null
          morning_description?: string | null
          morning_title?: string | null
          notes?: string | null
          overview?: string | null
          package_id: string
          packing_suggestions?: string | null
          stay?: string | null
          title: string
          transport?: string | null
          travel_distance_km?: number | null
          travel_duration?: string | null
          visitor_note?: string | null
          walking_distance_km?: number | null
          walking_level?: string | null
          weather?: string | null
        }
        Update: {
          accessibility_note?: string | null
          accommodation_name?: string | null
          afternoon_description?: string | null
          afternoon_title?: string | null
          day_number?: number
          description?: string | null
          dress_code?: string | null
          evening_description?: string | null
          evening_title?: string | null
          id?: string
          important_timings?: string | null
          location?: string | null
          meals?: string | null
          morning_description?: string | null
          morning_title?: string | null
          notes?: string | null
          overview?: string | null
          package_id?: string
          packing_suggestions?: string | null
          stay?: string | null
          title?: string
          transport?: string | null
          travel_distance_km?: number | null
          travel_duration?: string | null
          visitor_note?: string | null
          walking_distance_km?: number | null
          walking_level?: string | null
          weather?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "itinerary_days_package_id_fkey"
            columns: ["package_id"]
            isOneToOne: false
            referencedRelation: "packages"
            referencedColumns: ["id"]
          },
        ]
      }
      package_accessibility: {
        Row: {
          accessible_bathroom: boolean | null
          battery_cart_available: boolean | null
          care_notes: string | null
          darshan_assistance: boolean | null
          ground_floor_room: boolean | null
          id: string
          lift_accessible_stay: boolean | null
          medical_facility_nearby: boolean | null
          package_id: string
          reduced_walking_option: boolean | null
          requires_confirmation: boolean | null
          updated_at: string
          wheelchair_available: boolean | null
        }
        Insert: {
          accessible_bathroom?: boolean | null
          battery_cart_available?: boolean | null
          care_notes?: string | null
          darshan_assistance?: boolean | null
          ground_floor_room?: boolean | null
          id?: string
          lift_accessible_stay?: boolean | null
          medical_facility_nearby?: boolean | null
          package_id: string
          reduced_walking_option?: boolean | null
          requires_confirmation?: boolean | null
          updated_at?: string
          wheelchair_available?: boolean | null
        }
        Update: {
          accessible_bathroom?: boolean | null
          battery_cart_available?: boolean | null
          care_notes?: string | null
          darshan_assistance?: boolean | null
          ground_floor_room?: boolean | null
          id?: string
          lift_accessible_stay?: boolean | null
          medical_facility_nearby?: boolean | null
          package_id?: string
          reduced_walking_option?: boolean | null
          requires_confirmation?: boolean | null
          updated_at?: string
          wheelchair_available?: boolean | null
        }
        Relationships: [
          {
            foreignKeyName: "package_accessibility_package_id_fkey"
            columns: ["package_id"]
            isOneToOne: true
            referencedRelation: "packages"
            referencedColumns: ["id"]
          },
        ]
      }
      package_categories: {
        Row: {
          category_id: string
          display_order: number
          id: string
          package_id: string
        }
        Insert: {
          category_id: string
          display_order?: number
          id?: string
          package_id: string
        }
        Update: {
          category_id?: string
          display_order?: number
          id?: string
          package_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "package_categories_category_id_fkey"
            columns: ["category_id"]
            isOneToOne: false
            referencedRelation: "categories"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "package_categories_package_id_fkey"
            columns: ["package_id"]
            isOneToOne: false
            referencedRelation: "packages"
            referencedColumns: ["id"]
          },
        ]
      }
      package_departures: {
        Row: {
          available_seats: number
          booking_deadline: string | null
          capacity: number
          created_at: string
          departure_city: string
          end_date: string
          id: string
          package_id: string
          price_per_person: number | null
          start_date: string
          status: string
          updated_at: string
        }
        Insert: {
          available_seats: number
          booking_deadline?: string | null
          capacity: number
          created_at?: string
          departure_city: string
          end_date: string
          id?: string
          package_id: string
          price_per_person?: number | null
          start_date: string
          status?: string
          updated_at?: string
        }
        Update: {
          available_seats?: number
          booking_deadline?: string | null
          capacity?: number
          created_at?: string
          departure_city?: string
          end_date?: string
          id?: string
          package_id?: string
          price_per_person?: number | null
          start_date?: string
          status?: string
          updated_at?: string
        }
        Relationships: [
          {
            foreignKeyName: "package_departures_package_id_fkey"
            columns: ["package_id"]
            isOneToOne: false
            referencedRelation: "packages"
            referencedColumns: ["id"]
          },
        ]
      }
      package_destinations: {
        Row: {
          days_spent: number | null
          destination_id: string
          id: string
          package_id: string
          visit_order: number
        }
        Insert: {
          days_spent?: number | null
          destination_id: string
          id?: string
          package_id: string
          visit_order?: number
        }
        Update: {
          days_spent?: number | null
          destination_id?: string
          id?: string
          package_id?: string
          visit_order?: number
        }
        Relationships: [
          {
            foreignKeyName: "package_destinations_destination_id_fkey"
            columns: ["destination_id"]
            isOneToOne: false
            referencedRelation: "destinations"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "package_destinations_package_id_fkey"
            columns: ["package_id"]
            isOneToOne: false
            referencedRelation: "packages"
            referencedColumns: ["id"]
          },
        ]
      }
      package_features: {
        Row: {
          description: string | null
          display_order: number
          feature_type: string
          id: string
          package_id: string
          title: string
        }
        Insert: {
          description?: string | null
          display_order?: number
          feature_type: string
          id?: string
          package_id: string
          title: string
        }
        Update: {
          description?: string | null
          display_order?: number
          feature_type?: string
          id?: string
          package_id?: string
          title?: string
        }
        Relationships: [
          {
            foreignKeyName: "package_features_package_id_fkey"
            columns: ["package_id"]
            isOneToOne: false
            referencedRelation: "packages"
            referencedColumns: ["id"]
          },
        ]
      }
      package_media: {
        Row: {
          alt_text: string | null
          caption: string | null
          created_at: string
          display_order: number
          id: string
          is_cover: boolean
          media_type: string
          package_id: string
          storage_path: string | null
          url: string
        }
        Insert: {
          alt_text?: string | null
          caption?: string | null
          created_at?: string
          display_order?: number
          id?: string
          is_cover?: boolean
          media_type?: string
          package_id: string
          storage_path?: string | null
          url: string
        }
        Update: {
          alt_text?: string | null
          caption?: string | null
          created_at?: string
          display_order?: number
          id?: string
          is_cover?: boolean
          media_type?: string
          package_id?: string
          storage_path?: string | null
          url?: string
        }
        Relationships: [
          {
            foreignKeyName: "package_media_package_id_fkey"
            columns: ["package_id"]
            isOneToOne: false
            referencedRelation: "packages"
            referencedColumns: ["id"]
          },
        ]
      }
      packages: {
        Row: {
          accessibility_status: string | null
          alt_text: string | null
          base_price: number | null
          best_season: string | null
          cancellation_summary: string | null
          category: string
          category_label: string | null
          child_friendly: boolean
          created_at: string
          currency: string | null
          default_departure_city: string | null
          description: string | null
          destination_name: string | null
          destinations_text: string | null
          difficulty_level: string | null
          duration_days: number
          duration_label: string | null
          duration_nights: number | null
          featured: boolean
          food_types: string[] | null
          id: string
          image: string | null
          is_active: boolean
          location: string | null
          name: string
          pace: string | null
          price_basis: string | null
          rating: number | null
          recent_bookings: number | null
          region: string | null
          review_count: number | null
          route: string[] | null
          seats_left: number | null
          senior_friendly: boolean
          slug: string
          sub_category: string | null
          summary: string | null
          tags: string[] | null
          transport_types: string[] | null
          traveller_type: string | null
          traveller_types: string[] | null
          updated_at: string
          veg_meals: boolean
          verified: boolean | null
          walking_level: string | null
          wheelchair_access: boolean
        }
        Insert: {
          accessibility_status?: string | null
          alt_text?: string | null
          base_price?: number | null
          best_season?: string | null
          cancellation_summary?: string | null
          category?: string
          category_label?: string | null
          child_friendly?: boolean
          created_at?: string
          currency?: string | null
          default_departure_city?: string | null
          description?: string | null
          destination_name?: string | null
          destinations_text?: string | null
          difficulty_level?: string | null
          duration_days?: number
          duration_label?: string | null
          duration_nights?: number | null
          featured?: boolean
          food_types?: string[] | null
          id?: string
          image?: string | null
          is_active?: boolean
          location?: string | null
          name: string
          pace?: string | null
          price_basis?: string | null
          rating?: number | null
          recent_bookings?: number | null
          region?: string | null
          review_count?: number | null
          route?: string[] | null
          seats_left?: number | null
          senior_friendly?: boolean
          slug: string
          sub_category?: string | null
          summary?: string | null
          tags?: string[] | null
          transport_types?: string[] | null
          traveller_type?: string | null
          traveller_types?: string[] | null
          updated_at?: string
          veg_meals?: boolean
          verified?: boolean | null
          walking_level?: string | null
          wheelchair_access?: boolean
        }
        Update: {
          accessibility_status?: string | null
          alt_text?: string | null
          base_price?: number | null
          best_season?: string | null
          cancellation_summary?: string | null
          category?: string
          category_label?: string | null
          child_friendly?: boolean
          created_at?: string
          currency?: string | null
          default_departure_city?: string | null
          description?: string | null
          destination_name?: string | null
          destinations_text?: string | null
          difficulty_level?: string | null
          duration_days?: number
          duration_label?: string | null
          duration_nights?: number | null
          featured?: boolean
          food_types?: string[] | null
          id?: string
          image?: string | null
          is_active?: boolean
          location?: string | null
          name?: string
          pace?: string | null
          price_basis?: string | null
          rating?: number | null
          recent_bookings?: number | null
          region?: string | null
          review_count?: number | null
          route?: string[] | null
          seats_left?: number | null
          senior_friendly?: boolean
          slug?: string
          sub_category?: string | null
          summary?: string | null
          tags?: string[] | null
          transport_types?: string[] | null
          traveller_type?: string | null
          traveller_types?: string[] | null
          updated_at?: string
          veg_meals?: boolean
          verified?: boolean | null
          walking_level?: string | null
          wheelchair_access?: boolean
        }
        Relationships: []
      }
      profiles: {
        Row: {
          avatar_url: string | null
          created_at: string
          full_name: string | null
          id: string
          phone: string | null
          preferred_language: string | null
          updated_at: string
        }
        Insert: {
          avatar_url?: string | null
          created_at?: string
          full_name?: string | null
          id: string
          phone?: string | null
          preferred_language?: string | null
          updated_at?: string
        }
        Update: {
          avatar_url?: string | null
          created_at?: string
          full_name?: string | null
          id?: string
          phone?: string | null
          preferred_language?: string | null
          updated_at?: string
        }
        Relationships: []
      }
      reviews: {
        Row: {
          comment: string | null
          created_at: string
          id: string
          package_id: string
          rating: number
          title: string | null
          updated_at: string
          user_id: string
        }
        Insert: {
          comment?: string | null
          created_at?: string
          id?: string
          package_id: string
          rating: number
          title?: string | null
          updated_at?: string
          user_id: string
        }
        Update: {
          comment?: string | null
          created_at?: string
          id?: string
          package_id?: string
          rating?: number
          title?: string | null
          updated_at?: string
          user_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "reviews_package_id_fkey"
            columns: ["package_id"]
            isOneToOne: false
            referencedRelation: "packages"
            referencedColumns: ["id"]
          },
        ]
      }
      testimonials: {
        Row: {
          avatar_url: string | null
          created_at: string
          id: string
          is_active: boolean
          is_featured: boolean
          package_id: string | null
          quote: string
          rating: number
          travel_date: string | null
          traveller_age: number | null
          traveller_location: string | null
          traveller_name: string
          trip_name: string | null
          updated_at: string
        }
        Insert: {
          avatar_url?: string | null
          created_at?: string
          id?: string
          is_active?: boolean
          is_featured?: boolean
          package_id?: string | null
          quote: string
          rating?: number
          travel_date?: string | null
          traveller_age?: number | null
          traveller_location?: string | null
          traveller_name: string
          trip_name?: string | null
          updated_at?: string
        }
        Update: {
          avatar_url?: string | null
          created_at?: string
          id?: string
          is_active?: boolean
          is_featured?: boolean
          package_id?: string | null
          quote?: string
          rating?: number
          travel_date?: string | null
          traveller_age?: number | null
          traveller_location?: string | null
          traveller_name?: string
          trip_name?: string | null
          updated_at?: string
        }
        Relationships: [
          {
            foreignKeyName: "testimonials_package_id_fkey"
            columns: ["package_id"]
            isOneToOne: false
            referencedRelation: "packages"
            referencedColumns: ["id"]
          },
        ]
      }
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      [_ in never]: never
    }
    Enums: {
      [_ in never]: never
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
}

type DatabaseWithoutInternals = Omit<Database, "__InternalSupabase">

type DefaultSchema = DatabaseWithoutInternals[Extract<keyof Database, "public">]

export type Tables<
  DefaultSchemaTableNameOrOptions extends
    | keyof (DefaultSchema["Tables"] & DefaultSchema["Views"])
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof (DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
        DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Views"])
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? (DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
      DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Views"])[TableName] extends {
      Row: infer R
    }
    ? R
    : never
  : DefaultSchemaTableNameOrOptions extends keyof (DefaultSchema["Tables"] &
        DefaultSchema["Views"])
    ? (DefaultSchema["Tables"] &
        DefaultSchema["Views"])[DefaultSchemaTableNameOrOptions] extends {
        Row: infer R
      }
      ? R
      : never
    : never

export type TablesInsert<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Insert: infer I
    }
    ? I
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Insert: infer I
      }
      ? I
      : never
    : never

export type TablesUpdate<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Update: infer U
    }
    ? U
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Update: infer U
      }
      ? U
      : never
    : never

export type Enums<
  DefaultSchemaEnumNameOrOptions extends
    | keyof DefaultSchema["Enums"]
    | { schema: keyof DatabaseWithoutInternals },
  EnumName extends DefaultSchemaEnumNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"]
    : never = never,
> = DefaultSchemaEnumNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"][EnumName]
  : DefaultSchemaEnumNameOrOptions extends keyof DefaultSchema["Enums"]
    ? DefaultSchema["Enums"][DefaultSchemaEnumNameOrOptions]
    : never

export type CompositeTypes<
  PublicCompositeTypeNameOrOptions extends
    | keyof DefaultSchema["CompositeTypes"]
    | { schema: keyof DatabaseWithoutInternals },
  CompositeTypeName extends PublicCompositeTypeNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"]
    : never = never,
> = PublicCompositeTypeNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"][CompositeTypeName]
  : PublicCompositeTypeNameOrOptions extends keyof DefaultSchema["CompositeTypes"]
    ? DefaultSchema["CompositeTypes"][PublicCompositeTypeNameOrOptions]
    : never

export const Constants = {
  public: {
    Enums: {},
  },
} as const
