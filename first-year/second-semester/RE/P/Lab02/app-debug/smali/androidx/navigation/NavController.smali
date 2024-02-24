.class public Landroidx/navigation/NavController;
.super Ljava/lang/Object;
.source "NavController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavController$OnDestinationChangedListener;
    }
.end annotation


# static fields
.field private static final KEY_BACK_STACK:Ljava/lang/String; = "android-support-nav:controller:backStack"

.field static final KEY_DEEP_LINK_EXTRAS:Ljava/lang/String; = "android-support-nav:controller:deepLinkExtras"

.field static final KEY_DEEP_LINK_HANDLED:Ljava/lang/String; = "android-support-nav:controller:deepLinkHandled"

.field static final KEY_DEEP_LINK_IDS:Ljava/lang/String; = "android-support-nav:controller:deepLinkIds"

.field public static final KEY_DEEP_LINK_INTENT:Ljava/lang/String; = "android-support-nav:controller:deepLinkIntent"

.field private static final KEY_NAVIGATOR_STATE:Ljava/lang/String; = "android-support-nav:controller:navigatorState"

.field private static final KEY_NAVIGATOR_STATE_NAMES:Ljava/lang/String; = "android-support-nav:controller:navigatorState:names"

.field private static final TAG:Ljava/lang/String; = "NavController"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field final mBackStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mBackStackToRestore:[Landroid/os/Parcelable;

.field private final mContext:Landroid/content/Context;

.field private mDeepLinkHandled:Z

.field private mEnableOnBackPressedCallback:Z

.field mGraph:Landroidx/navigation/NavGraph;

.field private mInflater:Landroidx/navigation/NavInflater;

.field private final mLifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

.field private mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private final mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

.field private mNavigatorStateToRestore:Landroid/os/Bundle;

.field private final mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

.field private final mOnDestinationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/navigation/NavController$OnDestinationChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mViewModel:Landroidx/navigation/NavControllerViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    .line 98
    new-instance v0, Landroidx/navigation/NavigatorProvider;

    invoke-direct {v0}, Landroidx/navigation/NavigatorProvider;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavController;->mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 100
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavController;->mOnDestinationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 103
    new-instance v0, Landroidx/navigation/NavController$1;

    invoke-direct {v0, p0}, Landroidx/navigation/NavController$1;-><init>(Landroidx/navigation/NavController;)V

    iput-object v0, p0, Landroidx/navigation/NavController;->mLifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    .line 114
    new-instance v0, Landroidx/navigation/NavController$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/navigation/NavController$2;-><init>(Landroidx/navigation/NavController;Z)V

    iput-object v0, p0, Landroidx/navigation/NavController;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/navigation/NavController;->mEnableOnBackPressedCallback:Z

    .line 160
    iput-object p1, p0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    .line 161
    :goto_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 162
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 163
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Landroidx/navigation/NavController;->mActivity:Landroid/app/Activity;

    .line 164
    goto :goto_1

    .line 166
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    .line 168
    :cond_1
    :goto_1
    iget-object v0, p0, Landroidx/navigation/NavController;->mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

    new-instance v1, Landroidx/navigation/NavGraphNavigator;

    invoke-direct {v1, v0}, Landroidx/navigation/NavGraphNavigator;-><init>(Landroidx/navigation/NavigatorProvider;)V

    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    .line 169
    iget-object v0, p0, Landroidx/navigation/NavController;->mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

    new-instance v1, Landroidx/navigation/ActivityNavigator;

    iget-object v2, p0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/navigation/ActivityNavigator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    .line 170
    return-void
.end method

.method private dispatchOnDestinationChanged()Z
    .locals 10

    .line 375
    :goto_0
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    .line 376
    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    instance-of v0, v0, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    .line 377
    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Landroidx/navigation/NavController;->popBackStackInternal(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 384
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    .line 385
    .local v0, "nextResumed":Landroidx/navigation/NavDestination;
    const/4 v2, 0x0

    .line 386
    .local v2, "nextStarted":Landroidx/navigation/NavDestination;
    instance-of v3, v0, Landroidx/navigation/FloatingWindow;

    if-eqz v3, :cond_2

    .line 389
    iget-object v3, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 390
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/navigation/NavBackStackEntry;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 391
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v4

    .line 392
    .local v4, "destination":Landroidx/navigation/NavDestination;
    instance-of v5, v4, Landroidx/navigation/NavGraph;

    if-nez v5, :cond_1

    instance-of v5, v4, Landroidx/navigation/FloatingWindow;

    if-nez v5, :cond_1

    .line 394
    move-object v2, v4

    .line 395
    goto :goto_2

    .line 397
    .end local v4    # "destination":Landroidx/navigation/NavDestination;
    :cond_1
    goto :goto_1

    .line 403
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/navigation/NavBackStackEntry;>;"
    :cond_2
    :goto_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 404
    .local v3, "upwardStateTransitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroidx/navigation/NavBackStackEntry;Landroidx/lifecycle/Lifecycle$State;>;"
    iget-object v4, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v4

    .line 405
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/navigation/NavBackStackEntry;>;"
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 406
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 407
    .local v5, "entry":Landroidx/navigation/NavBackStackEntry;
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getMaxLifecycle()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v6

    .line 408
    .local v6, "currentMaxLifecycle":Landroidx/lifecycle/Lifecycle$State;
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v7

    .line 409
    .local v7, "destination":Landroidx/navigation/NavDestination;
    if-eqz v0, :cond_4

    invoke-virtual {v7}, Landroidx/navigation/NavDestination;->getId()I

    move-result v8

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 412
    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v6, v8, :cond_3

    .line 413
    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    :cond_3
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v0

    goto :goto_5

    .line 416
    :cond_4
    if-eqz v2, :cond_7

    invoke-virtual {v7}, Landroidx/navigation/NavDestination;->getId()I

    move-result v8

    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->getId()I

    move-result v9

    if-ne v8, v9, :cond_7

    .line 417
    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v6, v8, :cond_5

    .line 420
    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v8}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_4

    .line 421
    :cond_5
    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v6, v8, :cond_6

    .line 424
    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_6
    :goto_4
    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v2

    goto :goto_5

    .line 428
    :cond_7
    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v8}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    .line 430
    .end local v5    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v6    # "currentMaxLifecycle":Landroidx/lifecycle/Lifecycle$State;
    .end local v7    # "destination":Landroidx/navigation/NavDestination;
    :goto_5
    goto :goto_3

    .line 433
    :cond_8
    iget-object v5, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 434
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 435
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 436
    .restart local v5    # "entry":Landroidx/navigation/NavBackStackEntry;
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/lifecycle/Lifecycle$State;

    .line 437
    .local v6, "newState":Landroidx/lifecycle/Lifecycle$State;
    if-eqz v6, :cond_9

    .line 438
    invoke-virtual {v5, v6}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    .line 440
    .end local v5    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v6    # "newState":Landroidx/lifecycle/Lifecycle$State;
    :cond_9
    goto :goto_6

    .line 443
    :cond_a
    iget-object v5, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 445
    .local v5, "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    iget-object v6, p0, Landroidx/navigation/NavController;->mOnDestinationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/navigation/NavController$OnDestinationChangedListener;

    .line 446
    .local v7, "listener":Landroidx/navigation/NavController$OnDestinationChangedListener;
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v8

    .line 447
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    .line 446
    invoke-interface {v7, p0, v8, v9}, Landroidx/navigation/NavController$OnDestinationChangedListener;->onDestinationChanged(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    .line 448
    .end local v7    # "listener":Landroidx/navigation/NavController$OnDestinationChangedListener;
    goto :goto_7

    .line 449
    :cond_b
    return v1

    .line 451
    .end local v0    # "nextResumed":Landroidx/navigation/NavDestination;
    .end local v2    # "nextStarted":Landroidx/navigation/NavDestination;
    .end local v3    # "upwardStateTransitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroidx/navigation/NavBackStackEntry;Landroidx/lifecycle/Lifecycle$State;>;"
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/navigation/NavBackStackEntry;>;"
    .end local v5    # "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private findInvalidDestinationDisplayNameInDeepLink([I)Ljava/lang/String;
    .locals 5
    .param p1, "deepLink"    # [I

    .line 705
    iget-object v0, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    .line 706
    .local v0, "graph":Landroidx/navigation/NavGraph;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_4

    .line 707
    aget v2, p1, v1

    .line 708
    .local v2, "destinationId":I
    if-nez v1, :cond_0

    iget-object v4, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    .line 709
    invoke-virtual {v4}, Landroidx/navigation/NavGraph;->getId()I

    move-result v4

    if-ne v4, v2, :cond_1

    iget-object v3, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 710
    invoke-virtual {v0, v2, v3}, Landroidx/navigation/NavGraph;->findNode(IZ)Landroidx/navigation/NavDestination;

    move-result-object v3

    :cond_1
    :goto_1
    nop

    .line 711
    .local v3, "node":Landroidx/navigation/NavDestination;
    if-nez v3, :cond_2

    .line 712
    iget-object v4, p0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Landroidx/navigation/NavDestination;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 714
    :cond_2
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_3

    .line 716
    move-object v0, v3

    check-cast v0, Landroidx/navigation/NavGraph;

    .line 719
    :goto_2
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getStartDestination()I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v4

    instance-of v4, v4, Landroidx/navigation/NavGraph;

    if-eqz v4, :cond_3

    .line 720
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getStartDestination()I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroidx/navigation/NavGraph;

    goto :goto_2

    .line 706
    .end local v2    # "destinationId":I
    .end local v3    # "node":Landroidx/navigation/NavDestination;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 725
    .end local v1    # "i":I
    :cond_4
    return-object v3
.end method

.method private getDestinationCountOnBackStack()I
    .locals 4

    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "count":I
    iget-object v1, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 358
    .local v2, "entry":Landroidx/navigation/NavBackStackEntry;
    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v3

    instance-of v3, v3, Landroidx/navigation/NavGraph;

    if-nez v3, :cond_0

    .line 359
    add-int/lit8 v0, v0, 0x1

    .line 361
    .end local v2    # "entry":Landroidx/navigation/NavBackStackEntry;
    :cond_0
    goto :goto_0

    .line 362
    :cond_1
    return v0
.end method

.method private navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 18
    .param p1, "node"    # Landroidx/navigation/NavDestination;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p4, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;

    .line 925
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x0

    .line 926
    .local v2, "popped":Z
    if-eqz v1, :cond_0

    .line 927
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->getPopUpTo()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 928
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->getPopUpTo()I

    move-result v3

    .line 929
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->isPopUpToInclusive()Z

    move-result v4

    .line 928
    invoke-virtual {v0, v3, v4}, Landroidx/navigation/NavController;->popBackStackInternal(IZ)Z

    move-result v2

    .line 932
    :cond_0
    iget-object v3, v0, Landroidx/navigation/NavController;->mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 933
    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v4

    .line 932
    invoke-virtual {v3, v4}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v3

    .line 934
    .local v3, "navigator":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<Landroidx/navigation/NavDestination;>;"
    invoke-virtual/range {p1 .. p2}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 935
    .local v10, "finalArgs":Landroid/os/Bundle;
    move-object/from16 v11, p1

    move-object/from16 v12, p4

    invoke-virtual {v3, v11, v10, v1, v12}, Landroidx/navigation/Navigator;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;

    move-result-object v13

    .line 937
    .local v13, "newDest":Landroidx/navigation/NavDestination;
    if-eqz v13, :cond_5

    .line 938
    instance-of v4, v13, Landroidx/navigation/FloatingWindow;

    if-nez v4, :cond_1

    .line 943
    :goto_0
    iget-object v4, v0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    .line 944
    invoke-interface {v4}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v4

    instance-of v4, v4, Landroidx/navigation/FloatingWindow;

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    .line 946
    invoke-interface {v4}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->getId()I

    move-result v4

    const/4 v5, 0x1

    .line 945
    invoke-virtual {v0, v4, v5}, Landroidx/navigation/NavController;->popBackStackInternal(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 951
    :cond_1
    iget-object v4, v0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 952
    new-instance v14, Landroidx/navigation/NavBackStackEntry;

    iget-object v5, v0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    iget-object v6, v0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    iget-object v8, v0, Landroidx/navigation/NavController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iget-object v9, v0, Landroidx/navigation/NavController;->mViewModel:Landroidx/navigation/NavControllerViewModel;

    move-object v4, v14

    move-object v7, v10

    invoke-direct/range {v4 .. v9}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/LifecycleOwner;Landroidx/navigation/NavControllerViewModel;)V

    .line 954
    .local v4, "entry":Landroidx/navigation/NavBackStackEntry;
    iget-object v5, v0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v5, v4}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 958
    .end local v4    # "entry":Landroidx/navigation/NavBackStackEntry;
    :cond_2
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    move-object v14, v4

    .line 959
    .local v14, "hierarchy":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/navigation/NavBackStackEntry;>;"
    move-object v4, v13

    move-object v15, v4

    .line 960
    .local v15, "destination":Landroidx/navigation/NavDestination;
    :goto_1
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Landroidx/navigation/NavDestination;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/navigation/NavController;->findDestination(I)Landroidx/navigation/NavDestination;

    move-result-object v4

    if-nez v4, :cond_4

    .line 961
    invoke-virtual {v15}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v16

    .line 962
    .local v16, "parent":Landroidx/navigation/NavGraph;
    if-eqz v16, :cond_3

    .line 963
    new-instance v17, Landroidx/navigation/NavBackStackEntry;

    iget-object v5, v0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    iget-object v8, v0, Landroidx/navigation/NavController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iget-object v9, v0, Landroidx/navigation/NavController;->mViewModel:Landroidx/navigation/NavControllerViewModel;

    move-object/from16 v4, v17

    move-object/from16 v6, v16

    move-object v7, v10

    invoke-direct/range {v4 .. v9}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/LifecycleOwner;Landroidx/navigation/NavControllerViewModel;)V

    .line 965
    .restart local v4    # "entry":Landroidx/navigation/NavBackStackEntry;
    invoke-virtual {v14, v4}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 967
    .end local v4    # "entry":Landroidx/navigation/NavBackStackEntry;
    :cond_3
    move-object/from16 v15, v16

    .line 968
    .end local v16    # "parent":Landroidx/navigation/NavGraph;
    goto :goto_1

    .line 969
    :cond_4
    iget-object v4, v0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v4, v14}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    .line 971
    new-instance v16, Landroidx/navigation/NavBackStackEntry;

    iget-object v5, v0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    .line 972
    invoke-virtual {v13, v10}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    iget-object v8, v0, Landroidx/navigation/NavController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iget-object v9, v0, Landroidx/navigation/NavController;->mViewModel:Landroidx/navigation/NavControllerViewModel;

    move-object/from16 v4, v16

    move-object v6, v13

    invoke-direct/range {v4 .. v9}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/LifecycleOwner;Landroidx/navigation/NavControllerViewModel;)V

    .line 973
    .local v4, "newBackStackEntry":Landroidx/navigation/NavBackStackEntry;
    iget-object v5, v0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v5, v4}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 975
    .end local v4    # "newBackStackEntry":Landroidx/navigation/NavBackStackEntry;
    .end local v14    # "hierarchy":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/navigation/NavBackStackEntry;>;"
    .end local v15    # "destination":Landroidx/navigation/NavDestination;
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroidx/navigation/NavController;->updateOnBackPressedCallbackEnabled()V

    .line 976
    if-nez v2, :cond_6

    if-eqz v13, :cond_7

    .line 977
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroidx/navigation/NavController;->dispatchOnDestinationChanged()Z

    .line 979
    :cond_7
    return-void
.end method

.method private onGraphCreated(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "startDestinationArgs"    # Landroid/os/Bundle;

    .line 538
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/navigation/NavController;->mNavigatorStateToRestore:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 539
    const-string v2, "android-support-nav:controller:navigatorState:names"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 541
    .local v1, "navigatorNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 542
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 543
    .local v3, "name":Ljava/lang/String;
    iget-object v4, v0, Landroidx/navigation/NavController;->mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v4, v3}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v4

    .line 544
    .local v4, "navigator":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<*>;"
    iget-object v5, v0, Landroidx/navigation/NavController;->mNavigatorStateToRestore:Landroid/os/Bundle;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 545
    .local v5, "bundle":Landroid/os/Bundle;
    if-eqz v5, :cond_0

    .line 546
    invoke-virtual {v4, v5}, Landroidx/navigation/Navigator;->onRestoreState(Landroid/os/Bundle;)V

    .line 548
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "navigator":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<*>;"
    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_0
    goto :goto_0

    .line 551
    .end local v1    # "navigatorNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iget-object v1, v0, Landroidx/navigation/NavController;->mBackStackToRestore:[Landroid/os/Parcelable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 552
    array-length v4, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v1, v5

    .line 553
    .local v6, "parcelable":Landroid/os/Parcelable;
    move-object v7, v6

    check-cast v7, Landroidx/navigation/NavBackStackEntryState;

    .line 554
    .local v7, "state":Landroidx/navigation/NavBackStackEntryState;
    invoke-virtual {v7}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    move-result v8

    invoke-virtual {v0, v8}, Landroidx/navigation/NavController;->findDestination(I)Landroidx/navigation/NavDestination;

    move-result-object v8

    .line 555
    .local v8, "node":Landroidx/navigation/NavDestination;
    if-eqz v8, :cond_3

    .line 559
    invoke-virtual {v7}, Landroidx/navigation/NavBackStackEntryState;->getArgs()Landroid/os/Bundle;

    move-result-object v15

    .line 560
    .local v15, "args":Landroid/os/Bundle;
    if-eqz v15, :cond_2

    .line 561
    iget-object v9, v0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 563
    :cond_2
    new-instance v17, Landroidx/navigation/NavBackStackEntry;

    iget-object v10, v0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    iget-object v13, v0, Landroidx/navigation/NavController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iget-object v14, v0, Landroidx/navigation/NavController;->mViewModel:Landroidx/navigation/NavControllerViewModel;

    .line 565
    invoke-virtual {v7}, Landroidx/navigation/NavBackStackEntryState;->getUUID()Ljava/util/UUID;

    move-result-object v16

    invoke-virtual {v7}, Landroidx/navigation/NavBackStackEntryState;->getSavedState()Landroid/os/Bundle;

    move-result-object v18

    move-object/from16 v9, v17

    move-object v11, v8

    move-object v12, v15

    move-object/from16 v19, v15

    .end local v15    # "args":Landroid/os/Bundle;
    .local v19, "args":Landroid/os/Bundle;
    move-object/from16 v15, v16

    move-object/from16 v16, v18

    invoke-direct/range {v9 .. v16}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/LifecycleOwner;Landroidx/navigation/NavControllerViewModel;Ljava/util/UUID;Landroid/os/Bundle;)V

    .line 566
    .local v9, "entry":Landroidx/navigation/NavBackStackEntry;
    iget-object v10, v0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v10, v9}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 552
    .end local v6    # "parcelable":Landroid/os/Parcelable;
    .end local v7    # "state":Landroidx/navigation/NavBackStackEntryState;
    .end local v8    # "node":Landroidx/navigation/NavDestination;
    .end local v9    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v19    # "args":Landroid/os/Bundle;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 556
    .restart local v6    # "parcelable":Landroid/os/Parcelable;
    .restart local v7    # "state":Landroidx/navigation/NavBackStackEntryState;
    .restart local v8    # "node":Landroidx/navigation/NavDestination;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown destination during restore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    .line 557
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v7}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 568
    .end local v6    # "parcelable":Landroid/os/Parcelable;
    .end local v7    # "state":Landroidx/navigation/NavBackStackEntryState;
    .end local v8    # "node":Landroidx/navigation/NavDestination;
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroidx/navigation/NavController;->updateOnBackPressedCallbackEnabled()V

    .line 569
    iput-object v3, v0, Landroidx/navigation/NavController;->mBackStackToRestore:[Landroid/os/Parcelable;

    .line 571
    :cond_5
    iget-object v1, v0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_8

    iget-object v1, v0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 572
    iget-boolean v1, v0, Landroidx/navigation/NavController;->mDeepLinkHandled:Z

    if-nez v1, :cond_6

    iget-object v1, v0, Landroidx/navigation/NavController;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_6

    .line 573
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->handleDeepLink(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    nop

    :goto_2
    move v1, v2

    .line 574
    .local v1, "deepLinked":Z
    if-nez v1, :cond_7

    .line 577
    iget-object v2, v0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    move-object/from16 v4, p1

    invoke-direct {v0, v2, v4, v3, v3}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    goto :goto_3

    .line 574
    :cond_7
    move-object/from16 v4, p1

    goto :goto_3

    .line 571
    .end local v1    # "deepLinked":Z
    :cond_8
    move-object/from16 v4, p1

    .line 580
    :goto_3
    return-void
.end method

.method private updateOnBackPressedCallbackEnabled()V
    .locals 3

    .line 1114
    iget-object v0, p0, Landroidx/navigation/NavController;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    iget-boolean v1, p0, Landroidx/navigation/NavController;->mEnableOnBackPressedCallback:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1115
    invoke-direct {p0}, Landroidx/navigation/NavController;->getDestinationCountOnBackStack()I

    move-result v1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1114
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 1116
    return-void
.end method


# virtual methods
.method public addOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V
    .locals 3
    .param p1, "listener"    # Landroidx/navigation/NavController$OnDestinationChangedListener;

    .line 202
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 204
    .local v0, "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    .line 205
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 204
    invoke-interface {p1, p0, v1, v2}, Landroidx/navigation/NavController$OnDestinationChangedListener;->onDestinationChanged(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    .line 207
    .end local v0    # "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->mOnDestinationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method

.method public createDeepLink()Landroidx/navigation/NavDeepLinkBuilder;
    .locals 1

    .line 1018
    new-instance v0, Landroidx/navigation/NavDeepLinkBuilder;

    invoke-direct {v0, p0}, Landroidx/navigation/NavDeepLinkBuilder;-><init>(Landroidx/navigation/NavController;)V

    return-object v0
.end method

.method enableOnBackPressed(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1109
    iput-boolean p1, p0, Landroidx/navigation/NavController;->mEnableOnBackPressedCallback:Z

    .line 1110
    invoke-direct {p0}, Landroidx/navigation/NavController;->updateOnBackPressedCallbackEnabled()V

    .line 1111
    return-void
.end method

.method findDestination(I)Landroidx/navigation/NavDestination;
    .locals 3
    .param p1, "destinationId"    # I

    .line 757
    iget-object v0, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    if-nez v0, :cond_0

    .line 758
    const/4 v0, 0x0

    return-object v0

    .line 760
    :cond_0
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getId()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 761
    iget-object v0, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    return-object v0

    .line 763
    :cond_1
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    .line 765
    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    :goto_0
    nop

    .line 766
    .local v0, "currentNode":Landroidx/navigation/NavDestination;
    instance-of v1, v0, Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Landroidx/navigation/NavGraph;

    goto :goto_1

    .line 768
    :cond_3
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v1

    :goto_1
    nop

    .line 769
    .local v1, "currentGraph":Landroidx/navigation/NavGraph;
    invoke-virtual {v1, p1}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v2

    return-object v2
.end method

.method public getBackStackEntry(I)Landroidx/navigation/NavBackStackEntry;
    .locals 5
    .param p1, "destinationId"    # I

    .line 1162
    const/4 v0, 0x0

    .line 1163
    .local v0, "lastFromBackStack":Landroidx/navigation/NavBackStackEntry;
    iget-object v1, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1164
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/navigation/NavBackStackEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1165
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 1166
    .local v2, "entry":Landroidx/navigation/NavBackStackEntry;
    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v3

    .line 1167
    .local v3, "destination":Landroidx/navigation/NavDestination;
    invoke-virtual {v3}, Landroidx/navigation/NavDestination;->getId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 1168
    move-object v0, v2

    .line 1169
    goto :goto_1

    .line 1171
    .end local v2    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v3    # "destination":Landroidx/navigation/NavDestination;
    :cond_0
    goto :goto_0

    .line 1172
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 1176
    return-object v0

    .line 1173
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No destination with ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is on the NavController\'s back stack"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 174
    iget-object v0, p0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentDestination()Landroidx/navigation/NavDestination;
    .locals 1

    .line 748
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    const/4 v0, 0x0

    return-object v0

    .line 751
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    return-object v0
.end method

.method public getGraph()Landroidx/navigation/NavGraph;
    .locals 2

    .line 737
    iget-object v0, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_0

    .line 740
    return-object v0

    .line 738
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setGraph() before calling getGraph()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNavInflater()Landroidx/navigation/NavInflater;
    .locals 3

    .line 461
    iget-object v0, p0, Landroidx/navigation/NavController;->mInflater:Landroidx/navigation/NavInflater;

    if-nez v0, :cond_0

    .line 462
    new-instance v0, Landroidx/navigation/NavInflater;

    iget-object v1, p0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/navigation/NavController;->mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavInflater;-><init>(Landroid/content/Context;Landroidx/navigation/NavigatorProvider;)V

    iput-object v0, p0, Landroidx/navigation/NavController;->mInflater:Landroidx/navigation/NavInflater;

    .line 464
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->mInflater:Landroidx/navigation/NavInflater;

    return-object v0
.end method

.method public getNavigatorProvider()Landroidx/navigation/NavigatorProvider;
    .locals 1

    .line 189
    iget-object v0, p0, Landroidx/navigation/NavController;->mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

    return-object v0
.end method

.method public getViewModelStoreOwner(I)Landroidx/lifecycle/ViewModelStoreOwner;
    .locals 4
    .param p1, "navGraphId"    # I

    .line 1138
    iget-object v0, p0, Landroidx/navigation/NavController;->mViewModel:Landroidx/navigation/NavControllerViewModel;

    if-eqz v0, :cond_1

    .line 1142
    invoke-virtual {p0, p1}, Landroidx/navigation/NavController;->getBackStackEntry(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object v0

    .line 1143
    .local v0, "lastFromBackStack":Landroidx/navigation/NavBackStackEntry;
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    instance-of v1, v1, Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_0

    .line 1147
    return-object v0

    .line 1144
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No NavGraph with ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is on the NavController\'s back stack"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1139
    .end local v0    # "lastFromBackStack":Landroidx/navigation/NavBackStackEntry;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setViewModelStore() before calling getViewModelStoreOwner()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleDeepLink(Landroid/content/Intent;)Z
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    .line 603
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 604
    return v2

    .line 606
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 607
    .local v3, "extras":Landroid/os/Bundle;
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-string v5, "android-support-nav:controller:deepLinkIds"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v4

    .line 608
    .local v5, "deepLink":[I
    :goto_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 609
    .local v6, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_2

    const-string v7, "android-support-nav:controller:deepLinkExtras"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v4

    .line 610
    .local v7, "deepLinkExtras":Landroid/os/Bundle;
    :goto_1
    if-eqz v7, :cond_3

    .line 611
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 613
    :cond_3
    if-eqz v5, :cond_4

    array-length v8, v5

    if-nez v8, :cond_5

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 614
    iget-object v8, v0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/navigation/NavGraph;->matchDeepLink(Landroid/net/Uri;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v8

    .line 615
    .local v8, "matchingDeepLink":Landroidx/navigation/NavDestination$DeepLinkMatch;
    if-eqz v8, :cond_5

    .line 616
    invoke-virtual {v8}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/navigation/NavDestination;->buildDeepLinkIds()[I

    move-result-object v5

    .line 617
    invoke-virtual {v8}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getMatchingArgs()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 620
    .end local v8    # "matchingDeepLink":Landroidx/navigation/NavDestination$DeepLinkMatch;
    :cond_5
    if-eqz v5, :cond_13

    array-length v8, v5

    if-nez v8, :cond_6

    goto/16 :goto_7

    .line 623
    :cond_6
    nop

    .line 624
    invoke-direct {v0, v5}, Landroidx/navigation/NavController;->findInvalidDestinationDisplayNameInDeepLink([I)Ljava/lang/String;

    move-result-object v8

    .line 625
    .local v8, "invalidDestinationDisplayName":Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 626
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find destination "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " in the navigation graph, ignoring the deep link from "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "NavController"

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return v2

    .line 630
    :cond_7
    const-string v9, "android-support-nav:controller:deepLinkIntent"

    invoke-virtual {v6, v9, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 631
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v9

    .line 632
    .local v9, "flags":I
    const/high16 v10, 0x10000000

    and-int v11, v9, v10

    const/4 v12, 0x1

    if-eqz v11, :cond_9

    const v11, 0x8000

    and-int v13, v9, v11

    if-nez v13, :cond_9

    .line 637
    invoke-virtual {v1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 638
    iget-object v4, v0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    .line 639
    invoke-static {v4}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v4

    .line 640
    invoke-virtual {v4, v1}, Landroidx/core/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v4

    .line 641
    .local v4, "taskStackBuilder":Landroidx/core/app/TaskStackBuilder;
    invoke-virtual {v4}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    .line 642
    iget-object v10, v0, Landroidx/navigation/NavController;->mActivity:Landroid/app/Activity;

    if-eqz v10, :cond_8

    .line 643
    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    .line 645
    iget-object v10, v0, Landroidx/navigation/NavController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 647
    :cond_8
    return v12

    .line 649
    .end local v4    # "taskStackBuilder":Landroidx/core/app/TaskStackBuilder;
    :cond_9
    and-int/2addr v10, v9

    const-string v11, "unknown destination during deep link: "

    if-eqz v10, :cond_d

    .line 651
    iget-object v10, v0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v10}, Ljava/util/Deque;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a

    .line 652
    iget-object v10, v0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    invoke-virtual {v10}, Landroidx/navigation/NavGraph;->getId()I

    move-result v10

    invoke-virtual {v0, v10, v12}, Landroidx/navigation/NavController;->popBackStackInternal(IZ)Z

    .line 654
    :cond_a
    const/4 v10, 0x0

    .line 655
    .local v10, "index":I
    :goto_2
    array-length v13, v5

    if-ge v10, v13, :cond_c

    .line 656
    add-int/lit8 v13, v10, 0x1

    .end local v10    # "index":I
    .local v13, "index":I
    aget v10, v5, v10

    .line 657
    .local v10, "destinationId":I
    invoke-virtual {v0, v10}, Landroidx/navigation/NavController;->findDestination(I)Landroidx/navigation/NavDestination;

    move-result-object v14

    .line 658
    .local v14, "node":Landroidx/navigation/NavDestination;
    if-eqz v14, :cond_b

    .line 662
    new-instance v15, Landroidx/navigation/NavOptions$Builder;

    invoke-direct {v15}, Landroidx/navigation/NavOptions$Builder;-><init>()V

    .line 663
    invoke-virtual {v15, v2}, Landroidx/navigation/NavOptions$Builder;->setEnterAnim(I)Landroidx/navigation/NavOptions$Builder;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroidx/navigation/NavOptions$Builder;->setExitAnim(I)Landroidx/navigation/NavOptions$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/navigation/NavOptions$Builder;->build()Landroidx/navigation/NavOptions;

    move-result-object v15

    .line 662
    invoke-direct {v0, v14, v6, v15, v4}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 664
    .end local v10    # "destinationId":I
    .end local v14    # "node":Landroidx/navigation/NavDestination;
    move v10, v13

    goto :goto_2

    .line 659
    .restart local v10    # "destinationId":I
    .restart local v14    # "node":Landroidx/navigation/NavDestination;
    :cond_b
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    .line 660
    invoke-static {v11, v10}, Landroidx/navigation/NavDestination;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 665
    .end local v13    # "index":I
    .end local v14    # "node":Landroidx/navigation/NavDestination;
    .local v10, "index":I
    :cond_c
    return v12

    .line 668
    .end local v10    # "index":I
    :cond_d
    iget-object v10, v0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    .line 669
    .local v10, "graph":Landroidx/navigation/NavGraph;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    array-length v14, v5

    if-ge v13, v14, :cond_12

    .line 670
    aget v14, v5, v13

    .line 671
    .local v14, "destinationId":I
    if-nez v13, :cond_e

    iget-object v15, v0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    goto :goto_4

    :cond_e
    invoke-virtual {v10, v14}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v15

    .line 672
    .local v15, "node":Landroidx/navigation/NavDestination;
    :goto_4
    if-eqz v15, :cond_11

    .line 676
    array-length v4, v5

    sub-int/2addr v4, v12

    if-eq v13, v4, :cond_10

    .line 678
    move-object v4, v15

    check-cast v4, Landroidx/navigation/NavGraph;

    .line 681
    .end local v10    # "graph":Landroidx/navigation/NavGraph;
    .local v4, "graph":Landroidx/navigation/NavGraph;
    :goto_5
    invoke-virtual {v4}, Landroidx/navigation/NavGraph;->getStartDestination()I

    move-result v10

    invoke-virtual {v4, v10}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v10

    instance-of v10, v10, Landroidx/navigation/NavGraph;

    if-eqz v10, :cond_f

    .line 682
    invoke-virtual {v4}, Landroidx/navigation/NavGraph;->getStartDestination()I

    move-result v10

    invoke-virtual {v4, v10}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v10

    move-object v4, v10

    check-cast v4, Landroidx/navigation/NavGraph;

    goto :goto_5

    .line 681
    :cond_f
    move-object v10, v4

    const/4 v2, 0x0

    goto :goto_6

    .line 686
    .end local v4    # "graph":Landroidx/navigation/NavGraph;
    .restart local v10    # "graph":Landroidx/navigation/NavGraph;
    :cond_10
    invoke-virtual {v15, v6}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    new-instance v2, Landroidx/navigation/NavOptions$Builder;

    invoke-direct {v2}, Landroidx/navigation/NavOptions$Builder;-><init>()V

    iget-object v12, v0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    .line 687
    invoke-virtual {v12}, Landroidx/navigation/NavGraph;->getId()I

    move-result v12

    const/4 v1, 0x1

    invoke-virtual {v2, v12, v1}, Landroidx/navigation/NavOptions$Builder;->setPopUpTo(IZ)Landroidx/navigation/NavOptions$Builder;

    move-result-object v2

    .line 688
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroidx/navigation/NavOptions$Builder;->setEnterAnim(I)Landroidx/navigation/NavOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/navigation/NavOptions$Builder;->setExitAnim(I)Landroidx/navigation/NavOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/navigation/NavOptions$Builder;->build()Landroidx/navigation/NavOptions;

    move-result-object v1

    .line 686
    const/4 v2, 0x0

    invoke-direct {v0, v15, v4, v1, v2}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 669
    .end local v14    # "destinationId":I
    .end local v15    # "node":Landroidx/navigation/NavDestination;
    :goto_6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    move-object v4, v2

    const/4 v2, 0x0

    const/4 v12, 0x1

    goto :goto_3

    .line 673
    .restart local v14    # "destinationId":I
    .restart local v15    # "node":Landroidx/navigation/NavDestination;
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    .line 674
    invoke-static {v4, v14}, Landroidx/navigation/NavDestination;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 691
    .end local v13    # "i":I
    .end local v14    # "destinationId":I
    .end local v15    # "node":Landroidx/navigation/NavDestination;
    :cond_12
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/navigation/NavController;->mDeepLinkHandled:Z

    .line 692
    return v1

    .line 621
    .end local v8    # "invalidDestinationDisplayName":Ljava/lang/String;
    .end local v9    # "flags":I
    .end local v10    # "graph":Landroidx/navigation/NavGraph;
    :cond_13
    :goto_7
    const/4 v1, 0x0

    return v1
.end method

.method public navigate(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 780
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    .line 781
    return-void
.end method

.method public navigate(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .line 792
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    .line 793
    return-void
.end method

.method public navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "navOptions"    # Landroidx/navigation/NavOptions;

    .line 806
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 807
    return-void
.end method

.method public navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 10
    .param p1, "resId"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p4, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;

    .line 822
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    .line 824
    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    :goto_0
    nop

    .line 825
    .local v0, "currentNode":Landroidx/navigation/NavDestination;
    if-eqz v0, :cond_9

    .line 828
    move v1, p1

    .line 829
    .local v1, "destId":I
    invoke-virtual {v0, p1}, Landroidx/navigation/NavDestination;->getAction(I)Landroidx/navigation/NavAction;

    move-result-object v2

    .line 830
    .local v2, "navAction":Landroidx/navigation/NavAction;
    const/4 v3, 0x0

    .line 831
    .local v3, "combinedArgs":Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 832
    if-nez p3, :cond_1

    .line 833
    invoke-virtual {v2}, Landroidx/navigation/NavAction;->getNavOptions()Landroidx/navigation/NavOptions;

    move-result-object p3

    .line 835
    :cond_1
    invoke-virtual {v2}, Landroidx/navigation/NavAction;->getDestinationId()I

    move-result v1

    .line 836
    invoke-virtual {v2}, Landroidx/navigation/NavAction;->getDefaultArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 837
    .local v4, "navActionArgs":Landroid/os/Bundle;
    if-eqz v4, :cond_2

    .line 838
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v3, v5

    .line 839
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 843
    .end local v4    # "navActionArgs":Landroid/os/Bundle;
    :cond_2
    if-eqz p2, :cond_4

    .line 844
    if-nez v3, :cond_3

    .line 845
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v3, v4

    .line 847
    :cond_3
    invoke-virtual {v3, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 850
    :cond_4
    if-nez v1, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getPopUpTo()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 851
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getPopUpTo()I

    move-result v4

    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->isPopUpToInclusive()Z

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroidx/navigation/NavController;->popBackStack(IZ)Z

    .line 852
    return-void

    .line 855
    :cond_5
    if-eqz v1, :cond_8

    .line 860
    invoke-virtual {p0, v1}, Landroidx/navigation/NavController;->findDestination(I)Landroidx/navigation/NavDestination;

    move-result-object v4

    .line 861
    .local v4, "node":Landroidx/navigation/NavDestination;
    if-nez v4, :cond_7

    .line 862
    iget-object v5, p0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Landroidx/navigation/NavDestination;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 863
    .local v5, "dest":Ljava/lang/String;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "navigation destination "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " referenced from action "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    .line 865
    invoke-static {v9, p1}, Landroidx/navigation/NavDestination;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_6
    const-string v8, ""

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is unknown to this NavController"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 869
    .end local v5    # "dest":Ljava/lang/String;
    :cond_7
    invoke-direct {p0, v4, v3, p3, p4}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 870
    return-void

    .line 856
    .end local v4    # "node":Landroidx/navigation/NavDestination;
    :cond_8
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Destination id == 0 can only be used in conjunction with a valid navOptions.popUpTo"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 826
    .end local v1    # "destId":I
    .end local v2    # "navAction":Landroidx/navigation/NavAction;
    .end local v3    # "combinedArgs":Landroid/os/Bundle;
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "no current navigation node"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public navigate(Landroid/net/Uri;)V
    .locals 1
    .param p1, "deepLink"    # Landroid/net/Uri;

    .line 882
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/navigation/NavController;->navigate(Landroid/net/Uri;Landroidx/navigation/NavOptions;)V

    .line 883
    return-void
.end method

.method public navigate(Landroid/net/Uri;Landroidx/navigation/NavOptions;)V
    .locals 1
    .param p1, "deepLink"    # Landroid/net/Uri;
    .param p2, "navOptions"    # Landroidx/navigation/NavOptions;

    .line 896
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/navigation/NavController;->navigate(Landroid/net/Uri;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 897
    return-void
.end method

.method public navigate(Landroid/net/Uri;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 4
    .param p1, "deepLink"    # Landroid/net/Uri;
    .param p2, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p3, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;

    .line 912
    iget-object v0, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    invoke-virtual {v0, p1}, Landroidx/navigation/NavGraph;->matchDeepLink(Landroid/net/Uri;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v0

    .line 913
    .local v0, "deepLinkMatch":Landroidx/navigation/NavDestination$DeepLinkMatch;
    if-eqz v0, :cond_0

    .line 914
    invoke-virtual {v0}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getMatchingArgs()Landroid/os/Bundle;

    move-result-object v1

    .line 915
    .local v1, "args":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v2

    .line 916
    .local v2, "node":Landroidx/navigation/NavDestination;
    invoke-direct {p0, v2, v1, p2, p3}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 917
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v2    # "node":Landroidx/navigation/NavDestination;
    nop

    .line 921
    return-void

    .line 918
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "navigation destination with deepLink "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is unknown to this NavController"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public navigate(Landroidx/navigation/NavDirections;)V
    .locals 2
    .param p1, "directions"    # Landroidx/navigation/NavDirections;

    .line 987
    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getActionId()I

    move-result v0

    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    .line 988
    return-void
.end method

.method public navigate(Landroidx/navigation/NavDirections;Landroidx/navigation/NavOptions;)V
    .locals 2
    .param p1, "directions"    # Landroidx/navigation/NavDirections;
    .param p2, "navOptions"    # Landroidx/navigation/NavOptions;

    .line 997
    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getActionId()I

    move-result v0

    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    .line 998
    return-void
.end method

.method public navigate(Landroidx/navigation/NavDirections;Landroidx/navigation/Navigator$Extras;)V
    .locals 3
    .param p1, "directions"    # Landroidx/navigation/NavDirections;
    .param p2, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;

    .line 1008
    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getActionId()I

    move-result v0

    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p2}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 1009
    return-void
.end method

.method public navigateUp()Z
    .locals 6

    .line 325
    invoke-direct {p0}, Landroidx/navigation/NavController;->getDestinationCountOnBackStack()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 328
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    .line 329
    .local v0, "currentDestination":Landroidx/navigation/NavDestination;
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v2

    .line 330
    .local v2, "destId":I
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v3

    .line 331
    .local v3, "parent":Landroidx/navigation/NavGraph;
    :goto_0
    if-eqz v3, :cond_2

    .line 332
    invoke-virtual {v3}, Landroidx/navigation/NavGraph;->getStartDestination()I

    move-result v4

    if-eq v4, v2, :cond_1

    .line 333
    new-instance v4, Landroidx/navigation/NavDeepLinkBuilder;

    invoke-direct {v4, p0}, Landroidx/navigation/NavDeepLinkBuilder;-><init>(Landroidx/navigation/NavController;)V

    .line 334
    invoke-virtual {v3}, Landroidx/navigation/NavGraph;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/navigation/NavDeepLinkBuilder;->setDestination(I)Landroidx/navigation/NavDeepLinkBuilder;

    move-result-object v4

    .line 335
    invoke-virtual {v4}, Landroidx/navigation/NavDeepLinkBuilder;->createTaskStackBuilder()Landroidx/core/app/TaskStackBuilder;

    move-result-object v4

    .line 336
    .local v4, "parentIntents":Landroidx/core/app/TaskStackBuilder;
    invoke-virtual {v4}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    .line 337
    iget-object v5, p0, Landroidx/navigation/NavController;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_0

    .line 338
    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 340
    :cond_0
    return v1

    .line 342
    .end local v4    # "parentIntents":Landroidx/core/app/TaskStackBuilder;
    :cond_1
    invoke-virtual {v3}, Landroidx/navigation/NavGraph;->getId()I

    move-result v2

    .line 343
    invoke-virtual {v3}, Landroidx/navigation/NavGraph;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v3

    goto :goto_0

    .line 346
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 348
    .end local v0    # "currentDestination":Landroidx/navigation/NavDestination;
    .end local v2    # "destId":I
    .end local v3    # "parent":Landroidx/navigation/NavGraph;
    :cond_3
    invoke-virtual {p0}, Landroidx/navigation/NavController;->popBackStack()Z

    move-result v0

    return v0
.end method

.method public popBackStack()Z
    .locals 2

    .line 230
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const/4 v0, 0x0

    return v0

    .line 235
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/navigation/NavController;->popBackStack(IZ)Z

    move-result v0

    return v0
.end method

.method public popBackStack(IZ)Z
    .locals 2
    .param p1, "destinationId"    # I
    .param p2, "inclusive"    # Z

    .line 248
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/NavController;->popBackStackInternal(IZ)Z

    move-result v0

    .line 251
    .local v0, "popped":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/navigation/NavController;->dispatchOnDestinationChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method popBackStackInternal(IZ)Z
    .locals 9
    .param p1, "destinationId"    # I
    .param p2, "inclusive"    # Z

    .line 265
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 267
    return v1

    .line 269
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v0, "popOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/navigation/Navigator<*>;>;"
    iget-object v2, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 271
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/navigation/NavBackStackEntry;>;"
    const/4 v3, 0x0

    .line 272
    .local v3, "foundDestination":Z
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 273
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v4

    .line 274
    .local v4, "destination":Landroidx/navigation/NavDestination;
    iget-object v5, p0, Landroidx/navigation/NavController;->mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 275
    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v6

    .line 274
    invoke-virtual {v5, v6}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v5

    .line 276
    .local v5, "navigator":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<*>;"
    if-nez p2, :cond_1

    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->getId()I

    move-result v6

    if-eq v6, p1, :cond_2

    .line 277
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_2
    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->getId()I

    move-result v6

    if-ne v6, p1, :cond_3

    .line 280
    const/4 v3, 0x1

    .line 281
    goto :goto_1

    .line 283
    .end local v4    # "destination":Landroidx/navigation/NavDestination;
    .end local v5    # "navigator":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<*>;"
    :cond_3
    goto :goto_0

    .line 284
    :cond_4
    :goto_1
    if-nez v3, :cond_5

    .line 287
    iget-object v4, p0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Landroidx/navigation/NavDestination;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 288
    .local v4, "destinationName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring popBackStack to destination "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " as it was not found on the current back stack"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NavController"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return v1

    .line 292
    .end local v4    # "destinationName":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    .line 293
    .local v1, "popped":Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/Navigator;

    .line 294
    .restart local v5    # "navigator":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<*>;"
    invoke-virtual {v5}, Landroidx/navigation/Navigator;->popBackStack()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 295
    iget-object v6, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v6}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation/NavBackStackEntry;

    .line 296
    .local v6, "entry":Landroidx/navigation/NavBackStackEntry;
    sget-object v7, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v6, v7}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    .line 297
    iget-object v7, p0, Landroidx/navigation/NavController;->mViewModel:Landroidx/navigation/NavControllerViewModel;

    if-eqz v7, :cond_6

    .line 298
    iget-object v8, v6, Landroidx/navigation/NavBackStackEntry;->mId:Ljava/util/UUID;

    invoke-virtual {v7, v8}, Landroidx/navigation/NavControllerViewModel;->clear(Ljava/util/UUID;)V

    .line 300
    :cond_6
    const/4 v1, 0x1

    .line 305
    .end local v5    # "navigator":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<*>;"
    .end local v6    # "entry":Landroidx/navigation/NavBackStackEntry;
    goto :goto_2

    .line 306
    :cond_7
    invoke-direct {p0}, Landroidx/navigation/NavController;->updateOnBackPressedCallbackEnabled()V

    .line 307
    return v1
.end method

.method public removeOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/navigation/NavController$OnDestinationChangedListener;

    .line 218
    iget-object v0, p0, Landroidx/navigation/NavController;->mOnDestinationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 219
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "navState"    # Landroid/os/Bundle;

    .line 1081
    if-nez p1, :cond_0

    .line 1082
    return-void

    .line 1085
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1087
    const-string v0, "android-support-nav:controller:navigatorState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavController;->mNavigatorStateToRestore:Landroid/os/Bundle;

    .line 1088
    const-string v0, "android-support-nav:controller:backStack"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavController;->mBackStackToRestore:[Landroid/os/Parcelable;

    .line 1089
    const-string v0, "android-support-nav:controller:deepLinkHandled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/navigation/NavController;->mDeepLinkHandled:Z

    .line 1090
    return-void
.end method

.method public saveState()Landroid/os/Bundle;
    .locals 9

    .line 1033
    const/4 v0, 0x0

    .line 1034
    .local v0, "b":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1035
    .local v1, "navigatorNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1037
    .local v2, "navigatorState":Landroid/os/Bundle;
    iget-object v3, p0, Landroidx/navigation/NavController;->mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v3}, Landroidx/navigation/NavigatorProvider;->getNavigators()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1038
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/navigation/Navigator<+Landroidx/navigation/NavDestination;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1039
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation/Navigator;

    invoke-virtual {v6}, Landroidx/navigation/Navigator;->onSaveState()Landroid/os/Bundle;

    move-result-object v6

    .line 1040
    .local v6, "savedState":Landroid/os/Bundle;
    if-eqz v6, :cond_0

    .line 1041
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1044
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/navigation/Navigator<+Landroidx/navigation/NavDestination;>;>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "savedState":Landroid/os/Bundle;
    :cond_0
    goto :goto_0

    .line 1045
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1046
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v0, v3

    .line 1047
    const-string v3, "android-support-nav:controller:navigatorState:names"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1048
    const-string v3, "android-support-nav:controller:navigatorState"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1050
    :cond_2
    iget-object v3, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1051
    if-nez v0, :cond_3

    .line 1052
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v0, v3

    .line 1054
    :cond_3
    iget-object v3, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    new-array v3, v3, [Landroid/os/Parcelable;

    .line 1055
    .local v3, "backStack":[Landroid/os/Parcelable;
    const/4 v4, 0x0

    .line 1056
    .local v4, "index":I
    iget-object v5, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation/NavBackStackEntry;

    .line 1057
    .local v6, "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "index":I
    .local v7, "index":I
    new-instance v8, Landroidx/navigation/NavBackStackEntryState;

    invoke-direct {v8, v6}, Landroidx/navigation/NavBackStackEntryState;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    aput-object v8, v3, v4

    .line 1058
    .end local v6    # "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    move v4, v7

    goto :goto_1

    .line 1059
    .end local v7    # "index":I
    .restart local v4    # "index":I
    :cond_4
    const-string v5, "android-support-nav:controller:backStack"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1061
    .end local v3    # "backStack":[Landroid/os/Parcelable;
    .end local v4    # "index":I
    :cond_5
    iget-boolean v3, p0, Landroidx/navigation/NavController;->mDeepLinkHandled:Z

    if-eqz v3, :cond_7

    .line 1062
    if-nez v0, :cond_6

    .line 1063
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v0, v3

    .line 1065
    :cond_6
    iget-boolean v3, p0, Landroidx/navigation/NavController;->mDeepLinkHandled:Z

    const-string v4, "android-support-nav:controller:deepLinkHandled"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1067
    :cond_7
    return-object v0
.end method

.method public setGraph(I)V
    .locals 1
    .param p1, "graphResId"    # I

    .line 481
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/navigation/NavController;->setGraph(ILandroid/os/Bundle;)V

    .line 482
    return-void
.end method

.method public setGraph(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "graphResId"    # I
    .param p2, "startDestinationArgs"    # Landroid/os/Bundle;

    .line 499
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getNavInflater()Landroidx/navigation/NavInflater;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/navigation/NavInflater;->inflate(I)Landroidx/navigation/NavGraph;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/navigation/NavController;->setGraph(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    .line 500
    return-void
.end method

.method public setGraph(Landroidx/navigation/NavGraph;)V
    .locals 1
    .param p1, "graph"    # Landroidx/navigation/NavGraph;

    .line 514
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/navigation/NavController;->setGraph(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    .line 515
    return-void
.end method

.method public setGraph(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "graph"    # Landroidx/navigation/NavGraph;
    .param p2, "startDestinationArgs"    # Landroid/os/Bundle;

    .line 529
    iget-object v0, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/navigation/NavController;->popBackStackInternal(IZ)Z

    .line 533
    :cond_0
    iput-object p1, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    .line 534
    invoke-direct {p0, p2}, Landroidx/navigation/NavController;->onGraphCreated(Landroid/os/Bundle;)V

    .line 535
    return-void
.end method

.method setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2
    .param p1, "owner"    # Landroidx/lifecycle/LifecycleOwner;

    .line 1093
    iput-object p1, p0, Landroidx/navigation/NavController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 1094
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Landroidx/navigation/NavController;->mLifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 1095
    return-void
.end method

.method setOnBackPressedDispatcher(Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 2
    .param p1, "dispatcher"    # Landroidx/activity/OnBackPressedDispatcher;

    .line 1098
    iget-object v0, p0, Landroidx/navigation/NavController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Landroidx/navigation/NavController;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedCallback;->remove()V

    .line 1105
    iget-object v0, p0, Landroidx/navigation/NavController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iget-object v1, p0, Landroidx/navigation/NavController;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p1, v0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 1106
    return-void

    .line 1099
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setLifecycleOwner() before calling setOnBackPressedDispatcher()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setViewModelStore(Landroidx/lifecycle/ViewModelStore;)V
    .locals 2
    .param p1, "viewModelStore"    # Landroidx/lifecycle/ViewModelStore;

    .line 1119
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1122
    invoke-static {p1}, Landroidx/navigation/NavControllerViewModel;->getInstance(Landroidx/lifecycle/ViewModelStore;)Landroidx/navigation/NavControllerViewModel;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavController;->mViewModel:Landroidx/navigation/NavControllerViewModel;

    .line 1123
    return-void

    .line 1120
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewModelStore should be set before setGraph call"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
