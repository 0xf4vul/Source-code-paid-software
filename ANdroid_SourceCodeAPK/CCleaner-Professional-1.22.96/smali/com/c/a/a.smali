.class public final Lcom/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/a/a$a;
    }
.end annotation


# static fields
.field private static d:Ljava/lang/String;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Landroid/view/View;

.field private final e:Lcom/c/a/a$a;

.field private f:Z

.field private g:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 53
    :try_start_0
    const-string/jumbo v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 54
    const-string/jumbo v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 56
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "qemu.hw.mainkeys"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/c/a/a;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    sput-object v5, Lcom/c/a/a;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/high16 v8, -0x67000000

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 92
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 94
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 96
    invoke-virtual {p1, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 98
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/c/a/a;->a:Z

    .line 99
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/c/a/a;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 107
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 108
    iput-boolean v7, p0, Lcom/c/a/a;->a:Z

    .line 111
    :cond_0
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 112
    iput-boolean v7, p0, Lcom/c/a/a;->f:Z

    .line 116
    :cond_1
    new-instance v1, Lcom/c/a/a$a;

    iget-boolean v2, p0, Lcom/c/a/a;->a:Z

    iget-boolean v3, p0, Lcom/c/a/a;->f:Z

    invoke-direct {v1, p1, v2, v3, v5}, Lcom/c/a/a$a;-><init>(Landroid/app/Activity;ZZB)V

    iput-object v1, p0, Lcom/c/a/a;->e:Lcom/c/a/a$a;

    .line 118
    iget-object v1, p0, Lcom/c/a/a;->e:Lcom/c/a/a$a;

    .line 1504
    iget-boolean v1, v1, Lcom/c/a/a$a;->b:Z

    .line 118
    if-nez v1, :cond_2

    .line 119
    iput-boolean v5, p0, Lcom/c/a/a;->f:Z

    .line 122
    :cond_2
    iget-boolean v1, p0, Lcom/c/a/a;->a:Z

    if-eqz v1, :cond_4

    .line 2323
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/c/a/a;->c:Landroid/view/View;

    .line 2324
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/c/a/a;->e:Lcom/c/a/a$a;

    .line 2486
    iget v2, v2, Lcom/c/a/a$a;->a:I

    .line 2324
    invoke-direct {v1, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2325
    const/16 v2, 0x30

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2326
    iget-boolean v2, p0, Lcom/c/a/a;->f:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/c/a/a;->e:Lcom/c/a/a$a;

    invoke-virtual {v2}, Lcom/c/a/a$a;->a()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2327
    iget-object v2, p0, Lcom/c/a/a;->e:Lcom/c/a/a$a;

    .line 2524
    iget v2, v2, Lcom/c/a/a$a;->d:I

    .line 2327
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2329
    :cond_3
    iget-object v2, p0, Lcom/c/a/a;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2330
    iget-object v1, p0, Lcom/c/a/a;->c:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2331
    iget-object v1, p0, Lcom/c/a/a;->c:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2332
    iget-object v1, p0, Lcom/c/a/a;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 125
    :cond_4
    iget-boolean v1, p0, Lcom/c/a/a;->f:Z

    if-eqz v1, :cond_5

    .line 3336
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/c/a/a;->g:Landroid/view/View;

    .line 3338
    iget-object v1, p0, Lcom/c/a/a;->e:Lcom/c/a/a$a;

    invoke-virtual {v1}, Lcom/c/a/a$a;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3339
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/c/a/a;->e:Lcom/c/a/a$a;

    .line 3514
    iget v2, v2, Lcom/c/a/a$a;->c:I

    .line 3339
    invoke-direct {v1, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3340
    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3345
    :goto_0
    iget-object v2, p0, Lcom/c/a/a;->g:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3346
    iget-object v1, p0, Lcom/c/a/a;->g:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3347
    iget-object v1, p0, Lcom/c/a/a;->g:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3348
    iget-object v1, p0, Lcom/c/a/a;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 129
    :cond_5
    return-void

    .line 101
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 3342
    :cond_6
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/c/a/a;->e:Lcom/c/a/a$a;

    .line 3524
    iget v2, v2, Lcom/c/a/a$a;->d:I

    .line 3342
    invoke-direct {v1, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3343
    const/4 v2, 0x5

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 94
    nop

    :array_0
    .array-data 4
        0x10103ef
        0x10103f0
    .end array-data
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/c/a/a;->d:Ljava/lang/String;

    return-object v0
.end method
