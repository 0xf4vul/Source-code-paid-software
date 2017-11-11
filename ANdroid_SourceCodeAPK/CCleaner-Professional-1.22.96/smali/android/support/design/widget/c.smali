.class public final Landroid/support/design/widget/c;
.super Landroid/support/v7/app/n;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field private d:Landroid/support/design/widget/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/design/widget/BottomSheetBehavior",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/support/design/widget/BottomSheetBehavior$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/c;-><init>(Landroid/content/Context;B)V

    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 53
    .line 1185
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1186
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/design/a$b;->bottomSheetDialogTheme:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1188
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 53
    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/n;-><init>(Landroid/content/Context;I)V

    .line 44
    iput-boolean v3, p0, Landroid/support/design/widget/c;->a:Z

    .line 45
    iput-boolean v3, p0, Landroid/support/design/widget/c;->b:Z

    .line 197
    new-instance v0, Landroid/support/design/widget/c$3;

    invoke-direct {v0, p0}, Landroid/support/design/widget/c$3;-><init>(Landroid/support/design/widget/c;)V

    iput-object v0, p0, Landroid/support/design/widget/c;->e:Landroid/support/design/widget/BottomSheetBehavior$a;

    .line 56
    invoke-virtual {p0}, Landroid/support/design/widget/c;->a()Z

    .line 57
    return-void

    .line 1191
    :cond_0
    sget v0, Landroid/support/design/a$j;->Theme_Design_Light_BottomSheetDialog:I

    goto :goto_0
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .locals 4

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/support/design/widget/c;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/a$h;->design_bottom_sheet_dialog:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    .line 120
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 121
    invoke-virtual {p0}, Landroid/support/design/widget/c;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 123
    :cond_0
    sget v1, Landroid/support/design/a$f;->design_bottom_sheet:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 124
    invoke-static {v1}, Landroid/support/design/widget/BottomSheetBehavior;->b(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/c;->d:Landroid/support/design/widget/BottomSheetBehavior;

    .line 125
    iget-object v2, p0, Landroid/support/design/widget/c;->d:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v3, p0, Landroid/support/design/widget/c;->e:Landroid/support/design/widget/BottomSheetBehavior$a;

    .line 2518
    iput-object v3, v2, Landroid/support/design/widget/BottomSheetBehavior;->i:Landroid/support/design/widget/BottomSheetBehavior$a;

    .line 126
    iget-object v2, p0, Landroid/support/design/widget/c;->d:Landroid/support/design/widget/BottomSheetBehavior;

    iget-boolean v3, p0, Landroid/support/design/widget/c;->a:Z

    .line 3477
    iput-boolean v3, v2, Landroid/support/design/widget/BottomSheetBehavior;->c:Z

    .line 127
    if-nez p3, :cond_1

    .line 128
    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 133
    :goto_0
    sget v2, Landroid/support/design/a$f;->touch_outside:I

    invoke-virtual {v0, v2}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/support/design/widget/c$1;

    invoke-direct {v3, p0}, Landroid/support/design/widget/c$1;-><init>(Landroid/support/design/widget/c;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    new-instance v2, Landroid/support/design/widget/c$2;

    invoke-direct {v2, p0}, Landroid/support/design/widget/c$2;-><init>(Landroid/support/design/widget/c;)V

    invoke-static {v1, v2}, Landroid/support/v4/view/x;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 164
    return-object v0

    .line 130
    :cond_1
    invoke-virtual {v1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 73
    invoke-super {p0, p1}, Landroid/support/v7/app/n;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Landroid/support/design/widget/c;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 76
    return-void
.end method

.method protected final onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 101
    invoke-super {p0}, Landroid/support/v7/app/n;->onStart()V

    .line 102
    iget-object v0, p0, Landroid/support/design/widget/c;->d:Landroid/support/design/widget/BottomSheetBehavior;

    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Landroid/support/design/widget/c;->d:Landroid/support/design/widget/BottomSheetBehavior;

    .line 1529
    iget v0, v1, Landroid/support/design/widget/BottomSheetBehavior;->d:I

    if-eq v3, v0, :cond_0

    .line 1532
    iget-object v0, v1, Landroid/support/design/widget/BottomSheetBehavior;->g:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 1536
    iput v3, v1, Landroid/support/design/widget/BottomSheetBehavior;->d:I

    .line 1547
    :cond_0
    :goto_0
    return-void

    .line 1540
    :cond_1
    iget-object v0, v1, Landroid/support/design/widget/BottomSheetBehavior;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1541
    if-eqz v0, :cond_0

    .line 1545
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1546
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Landroid/support/v4/view/x;->H(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1547
    new-instance v2, Landroid/support/design/widget/BottomSheetBehavior$1;

    invoke-direct {v2, v1, v0}, Landroid/support/design/widget/BottomSheetBehavior$1;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1554
    :cond_2
    invoke-virtual {v1, v0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public final setCancelable(Z)V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/support/v7/app/n;->setCancelable(Z)V

    .line 91
    iget-boolean v0, p0, Landroid/support/design/widget/c;->a:Z

    if-eq v0, p1, :cond_0

    .line 92
    iput-boolean p1, p0, Landroid/support/design/widget/c;->a:Z

    .line 93
    iget-object v0, p0, Landroid/support/design/widget/c;->d:Landroid/support/design/widget/BottomSheetBehavior;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Landroid/support/design/widget/c;->d:Landroid/support/design/widget/BottomSheetBehavior;

    .line 1477
    iput-boolean p1, v0, Landroid/support/design/widget/BottomSheetBehavior;->c:Z

    .line 97
    :cond_0
    return-void
.end method

.method public final setCanceledOnTouchOutside(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 109
    invoke-super {p0, p1}, Landroid/support/v7/app/n;->setCanceledOnTouchOutside(Z)V

    .line 110
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/c;->a:Z

    if-nez v0, :cond_0

    .line 111
    iput-boolean v1, p0, Landroid/support/design/widget/c;->a:Z

    .line 113
    :cond_0
    iput-boolean p1, p0, Landroid/support/design/widget/c;->b:Z

    .line 114
    iput-boolean v1, p0, Landroid/support/design/widget/c;->c:Z

    .line 115
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0, v0}, Landroid/support/design/widget/c;->a(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/n;->setContentView(Landroid/view/View;)V

    .line 69
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/support/design/widget/c;->a(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/n;->setContentView(Landroid/view/View;)V

    .line 81
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/support/design/widget/c;->a(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/n;->setContentView(Landroid/view/View;)V

    .line 86
    return-void
.end method
