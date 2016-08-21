﻿using Android.OS;
using Android.Views;
using Android.Widget;
using FiveMin.Droid.Activities;
using FiveMin.Droid.Helpers;
using FiveMin.Portable.Enums;

namespace FiveMin.Droid.Fragments
{
    public class ProfileFragment : Android.Support.V4.App.Fragment
    {
        private TextView _liked;
        private TextView _watchlist;
        private TextView _disliked;
        private TextView _favs;
        private TextView _watched;
        private View _mainView;

        public ProfileFragment ()
        {
            RetainInstance = true;
        }

        public override View OnCreateView (LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
        {
            // Use this to return your custom view for this Fragment
            base.OnCreateView (inflater, container, savedInstanceState);

            _mainView = inflater.Inflate (Resource.Layout.fragment_profile, null);

            FetchViews ();
            UpdateData ();

            return _mainView;
        }

        void UpdateData ()
        {
            _liked.Text = SharedPreferencesHelper.Instance.GetAllVideos (SharedPreferenceType.Liked).Count.ToString ();
            _watchlist.Text = SharedPreferencesHelper.Instance.GetAllVideos (SharedPreferenceType.Watchlist).Count.ToString ();
            _disliked.Text = SharedPreferencesHelper.Instance.GetAllVideos (SharedPreferenceType.Disliked).Count.ToString ();
            _favs.Text = SharedPreferencesHelper.Instance.GetAllVideos (SharedPreferenceType.Favorites).Count.ToString ();
            _watched.Text = SharedPreferencesHelper.Instance.GetAllVideos (SharedPreferenceType.Watched).Count.ToString ();
        }

        void FetchViews ()
        {
            if (_mainView != null)
            {
                _disliked = _mainView.FindViewById<TextView> (Resource.Id.dislikedTextView);
                _liked = _mainView.FindViewById<TextView> (Resource.Id.likedTextView);
                _watchlist = _mainView.FindViewById<TextView> (Resource.Id.watchListTextView);
                _favs = _mainView.FindViewById<TextView> (Resource.Id.favTextView);
                _watched = _mainView.FindViewById<TextView> (Resource.Id.watchedTextView);
            }
        }

        public override void OnAttach (Android.Content.Context context)
        {
            base.OnAttach (context);
            //var toolbar = (context as BaseActivity)?.Toolbar;

            //toolbar?.SetTitle (Resource.String.fragment_title_my_profile);
        }
    }
}

