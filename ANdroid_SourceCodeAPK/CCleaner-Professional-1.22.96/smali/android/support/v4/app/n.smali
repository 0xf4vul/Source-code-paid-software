.class final Landroid/support/v4/app/n;
.super Landroid/support/v4/app/m;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/n$e;,
        Landroid/support/v4/app/n$d;,
        Landroid/support/v4/app/n$c;,
        Landroid/support/v4/app/n$b;,
        Landroid/support/v4/app/n$a;
    }
.end annotation


# static fields
.field static final D:Landroid/view/animation/Interpolator;

.field static final E:Landroid/view/animation/Interpolator;

.field static final F:Landroid/view/animation/Interpolator;

.field static final G:Landroid/view/animation/Interpolator;

.field static a:Z

.field static final b:Z

.field static q:Ljava/lang/reflect/Field;


# instance fields
.field A:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/n$e;",
            ">;"
        }
    .end annotation
.end field

.field C:Ljava/lang/Runnable;

.field private H:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/support/v4/h/i",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/n$c;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/h;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/h;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/c;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/h;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/c;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m:I

.field n:Landroid/support/v4/app/l;

.field o:Landroid/support/v4/app/j;

.field p:Landroid/support/v4/app/h;

.field r:Z

.field s:Z

.field t:Z

.field u:Ljava/lang/String;

.field v:Z

.field w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/c;",
            ">;"
        }
    .end annotation
.end field

.field x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/h;",
            ">;"
        }
    .end annotation
.end field

.field z:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x40200000    # 2.5f

    const/high16 v3, 0x3fc00000    # 1.5f

    .line 587
    sput-boolean v0, Landroid/support/v4/app/n;->a:Z

    .line 590
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Landroid/support/v4/app/n;->b:Z

    .line 687
    const/4 v0, 0x0

    sput-object v0, Landroid/support/v4/app/n;->q:Ljava/lang/reflect/Field;

    .line 1036
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/n;->D:Landroid/view/animation/Interpolator;

    .line 1037
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/n;->E:Landroid/view/animation/Interpolator;

    .line 1038
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/n;->F:Landroid/view/animation/Interpolator;

    .line 1039
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/n;->G:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 586
    invoke-direct {p0}, Landroid/support/v4/app/m;-><init>()V

    .line 682
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/n;->m:I

    .line 701
    iput-object v1, p0, Landroid/support/v4/app/n;->z:Landroid/os/Bundle;

    .line 702
    iput-object v1, p0, Landroid/support/v4/app/n;->A:Landroid/util/SparseArray;

    .line 707
    new-instance v0, Landroid/support/v4/app/n$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/n$1;-><init>(Landroid/support/v4/app/n;)V

    iput-object v0, p0, Landroid/support/v4/app/n;->C:Ljava/lang/Runnable;

    .line 3542
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroid/support/v4/h/b;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/c;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Landroid/support/v4/h/b",
            "<",
            "Landroid/support/v4/app/h;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 2219
    .line 2220
    add-int/lit8 v0, p4, -0x1

    move v6, v0

    move v4, p4

    :goto_0
    if-lt v6, p3, :cond_6

    .line 2221
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    .line 2222
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move v2, v3

    .line 28892
    :goto_1
    iget-object v1, v0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 28893
    iget-object v1, v0, Landroid/support/v4/app/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/c$a;

    .line 28894
    invoke-static {v1}, Landroid/support/v4/app/c;->b(Landroid/support/v4/app/c$a;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v5

    .line 2223
    :goto_2
    if-eqz v1, :cond_4

    add-int/lit8 v1, v6, 0x1

    .line 2224
    invoke-virtual {v0, p1, v1, p4}, Landroid/support/v4/app/c;->a(Ljava/util/ArrayList;II)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v5

    .line 2225
    :goto_3
    if-eqz v1, :cond_7

    .line 2226
    iget-object v1, p0, Landroid/support/v4/app/n;->B:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 2227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/n;->B:Ljava/util/ArrayList;

    .line 2229
    :cond_0
    new-instance v1, Landroid/support/v4/app/n$e;

    invoke-direct {v1, v0, v7}, Landroid/support/v4/app/n$e;-><init>(Landroid/support/v4/app/c;Z)V

    .line 2231
    iget-object v2, p0, Landroid/support/v4/app/n;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2232
    invoke-virtual {v0, v1}, Landroid/support/v4/app/c;->a(Landroid/support/v4/app/h$c;)V

    .line 2235
    if-eqz v7, :cond_5

    .line 2236
    invoke-virtual {v0}, Landroid/support/v4/app/c;->d()V

    .line 2242
    :goto_4
    add-int/lit8 v1, v4, -0x1

    .line 2243
    if-eq v6, v1, :cond_1

    .line 2244
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2245
    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2249
    :cond_1
    invoke-direct {p0, p5}, Landroid/support/v4/app/n;->b(Landroid/support/v4/h/b;)V

    move v0, v1

    .line 2220
    :goto_5
    add-int/lit8 v1, v6, -0x1

    move v6, v1

    move v4, v0

    goto :goto_0

    .line 28892
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    move v1, v3

    .line 28898
    goto :goto_2

    :cond_4
    move v1, v3

    .line 2224
    goto :goto_3

    .line 2238
    :cond_5
    invoke-virtual {v0, v3}, Landroid/support/v4/app/c;->a(Z)V

    goto :goto_4

    .line 2252
    :cond_6
    return v4

    :cond_7
    move v0, v4

    goto :goto_5
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/h;
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 869
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 870
    if-ne v1, v0, :cond_1

    .line 871
    const/4 v0, 0x0

    .line 882
    :cond_0
    :goto_0
    return-object v0

    .line 873
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 874
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Fragment no longer exists for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/n;->a(Ljava/lang/RuntimeException;)V

    .line 877
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 878
    if-nez v0, :cond_0

    .line 879
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Fragment no longer exists for key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/n;->a(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private static a(FF)Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 1059
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1060
    sget-object v1, Landroid/support/v4/app/n;->E:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1061
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1062
    return-object v0
.end method

.method private static a(FFFF)Landroid/view/animation/Animation;
    .locals 12

    .prologue
    const-wide/16 v10, 0xdc

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    .line 1045
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1046
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v1, p0

    move v2, p1

    move v3, p0

    move v4, p1

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1048
    sget-object v1, Landroid/support/v4/app/n;->D:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1049
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1050
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1051
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1052
    sget-object v1, Landroid/support/v4/app/n;->E:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1053
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1054
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1055
    return-object v9
.end method

.method private a(Landroid/support/v4/app/h;IZI)Landroid/view/animation/Animation;
    .locals 6

    .prologue
    const v5, 0x3f79999a    # 0.975f

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1067
    invoke-virtual {p1}, Landroid/support/v4/app/h;->z()I

    invoke-static {}, Landroid/support/v4/app/h;->p()Landroid/view/animation/Animation;

    .line 1072
    invoke-virtual {p1}, Landroid/support/v4/app/h;->z()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    .line 4198
    iget-object v0, v0, Landroid/support/v4/app/l;->c:Landroid/content/Context;

    .line 1074
    invoke-virtual {p1}, Landroid/support/v4/app/h;->z()I

    move-result v2

    .line 1073
    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1075
    if-eqz v0, :cond_0

    .line 1121
    :goto_0
    return-object v0

    .line 1080
    :cond_0
    if-nez p2, :cond_1

    move-object v0, v1

    .line 1081
    goto :goto_0

    .line 4374
    :cond_1
    const/4 v0, -0x1

    .line 4375
    sparse-switch p2, :sswitch_data_0

    .line 1085
    :goto_1
    if-gez v0, :cond_5

    move-object v0, v1

    .line 1086
    goto :goto_0

    .line 4377
    :sswitch_0
    if-eqz p3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    .line 4380
    :sswitch_1
    if-eqz p3, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    goto :goto_1

    .line 4383
    :sswitch_2
    if-eqz p3, :cond_4

    const/4 v0, 0x5

    goto :goto_1

    :cond_4
    const/4 v0, 0x6

    goto :goto_1

    .line 1089
    :cond_5
    packed-switch v0, :pswitch_data_0

    .line 1104
    if-nez p4, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1105
    iget-object v0, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->f()I

    move-result p4

    .line 1107
    :cond_6
    if-nez p4, :cond_7

    move-object v0, v1

    .line 1108
    goto :goto_0

    .line 1091
    :pswitch_0
    const/high16 v0, 0x3f900000    # 1.125f

    invoke-static {v0, v3, v4, v3}, Landroid/support/v4/app/n;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 1093
    :pswitch_1
    invoke-static {v3, v5, v3, v4}, Landroid/support/v4/app/n;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 1095
    :pswitch_2
    invoke-static {v5, v3, v4, v3}, Landroid/support/v4/app/n;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 1097
    :pswitch_3
    const v0, 0x3f89999a    # 1.075f

    invoke-static {v3, v0, v3, v4}, Landroid/support/v4/app/n;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 1099
    :pswitch_4
    invoke-static {v4, v3}, Landroid/support/v4/app/n;->a(FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 1101
    :pswitch_5
    invoke-static {v3, v4}, Landroid/support/v4/app/n;->a(FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :cond_7
    move-object v0, v1

    .line 1121
    goto :goto_0

    .line 4375
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch

    .line 1089
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(ILandroid/support/v4/app/c;)V
    .locals 4

    .prologue
    .line 1913
    monitor-enter p0

    .line 1914
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/n;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1915
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/n;->j:Ljava/util/ArrayList;

    .line 1917
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1918
    if-ge p1, v0, :cond_2

    .line 1919
    sget-boolean v0, Landroid/support/v4/app/n;->a:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Setting back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1934
    :goto_0
    monitor-exit p0

    return-void

    .line 1922
    :cond_2
    :goto_1
    if-ge v0, p1, :cond_5

    .line 1923
    iget-object v1, p0, Landroid/support/v4/app/n;->j:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1924
    iget-object v1, p0, Landroid/support/v4/app/n;->k:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 1925
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/n;->k:Ljava/util/ArrayList;

    .line 1927
    :cond_3
    sget-boolean v1, Landroid/support/v4/app/n;->a:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Adding available back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/n;->k:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1929
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1931
    :cond_5
    sget-boolean v0, Landroid/support/v4/app/n;->a:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Adding back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1934
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Landroid/support/v4/app/h;Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 3114
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    .line 3115
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    .line 34695
    iget-object v0, v0, Landroid/support/v4/app/h;->z:Landroid/support/v4/app/n;

    .line 3116
    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    .line 3117
    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    .line 3118
    invoke-direct {v0, p1, p2, v1}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/h;Landroid/content/Context;Z)V

    .line 3121
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_2

    .line 3129
    :cond_1
    return-void

    .line 3124
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/n;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/h/i;

    .line 3125
    if-eqz p3, :cond_3

    iget-object v0, v0, Landroid/support/v4/h/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0
.end method

.method private a(Landroid/support/v4/app/h;Landroid/os/Bundle;Z)V
    .locals 2

    .prologue
    .line 3150
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    .line 3151
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    .line 36695
    iget-object v0, v0, Landroid/support/v4/app/h;->z:Landroid/support/v4/app/n;

    .line 3152
    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    .line 3153
    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    .line 3154
    invoke-direct {v0, p1, p2, v1}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/h;Landroid/os/Bundle;Z)V

    .line 3157
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_2

    .line 3165
    :cond_1
    return-void

    .line 3160
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/n;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/h/i;

    .line 3161
    if-eqz p3, :cond_3

    iget-object v0, v0, Landroid/support/v4/h/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0
.end method

.method private a(Landroid/support/v4/app/h;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 2

    .prologue
    .line 3188
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    .line 3189
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    .line 38695
    iget-object v0, v0, Landroid/support/v4/app/h;->z:Landroid/support/v4/app/n;

    .line 3190
    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    .line 3191
    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    .line 3192
    invoke-direct {v0, p1, p2, p3, v1}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/h;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 3195
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_2

    .line 3203
    :cond_1
    return-void

    .line 3198
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/n;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/h/i;

    .line 3199
    if-eqz p4, :cond_3

    iget-object v0, v0, Landroid/support/v4/h/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/app/n;)V
    .locals 0

    .prologue
    .line 586
    invoke-direct {p0}, Landroid/support/v4/app/n;->v()V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/n;Landroid/support/v4/app/c;ZZZ)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 586
    .line 47272
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 47273
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 47274
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47275
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47276
    invoke-static {v1, v2, v3, v4}, Landroid/support/v4/app/n;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 47277
    if-eqz p3, :cond_0

    move-object v0, p0

    move v5, v4

    .line 47278
    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/r;->a(Landroid/support/v4/app/n;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 47280
    :cond_0
    if-eqz p4, :cond_1

    .line 47281
    iget v0, p0, Landroid/support/v4/app/n;->m:I

    invoke-virtual {p0, v0, v4}, Landroid/support/v4/app/n;->a(IZ)V

    .line 47284
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 47285
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v3

    .line 47286
    :goto_0
    if-ge v1, v2, :cond_5

    .line 47289
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 47290
    if-eqz v0, :cond_3

    iget-object v4, v0, Landroid/support/v4/app/h;->P:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-boolean v4, v0, Landroid/support/v4/app/h;->X:Z

    if-eqz v4, :cond_3

    iget v4, v0, Landroid/support/v4/app/h;->F:I

    .line 47291
    invoke-virtual {p1, v4}, Landroid/support/v4/app/c;->b(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 47292
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_2

    iget v4, v0, Landroid/support/v4/app/h;->Z:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_2

    .line 47294
    iget-object v4, v0, Landroid/support/v4/app/h;->P:Landroid/view/View;

    iget v5, v0, Landroid/support/v4/app/h;->Z:F

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 47296
    :cond_2
    if-eqz p4, :cond_4

    .line 47297
    iput v6, v0, Landroid/support/v4/app/h;->Z:F

    .line 47286
    :cond_3
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 47299
    :cond_4
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v0, Landroid/support/v4/app/h;->Z:F

    .line 47300
    iput-boolean v3, v0, Landroid/support/v4/app/h;->X:Z

    goto :goto_1

    .line 586
    :cond_5
    return-void
.end method

.method private static a(Landroid/support/v4/h/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/h/b",
            "<",
            "Landroid/support/v4/app/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2189
    invoke-virtual {p0}, Landroid/support/v4/h/b;->size()I

    move-result v2

    .line 2190
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 27334
    iget-object v0, p0, Landroid/support/v4/h/b;->g:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 2191
    check-cast v0, Landroid/support/v4/app/h;

    .line 2192
    iget-boolean v3, v0, Landroid/support/v4/app/h;->t:Z

    if-nez v3, :cond_0

    .line 27345
    iget-object v3, v0, Landroid/support/v4/app/h;->P:Landroid/view/View;

    .line 2194
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_1

    .line 28345
    iget-object v0, v0, Landroid/support/v4/app/h;->P:Landroid/view/View;

    .line 2195
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2190
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2197
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v0, Landroid/support/v4/app/h;->Z:F

    .line 2198
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 2202
    :cond_2
    return-void
.end method

.method private static a(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1144
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1167
    :cond_0
    :goto_0
    return-void

    .line 4729
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v0, v4, :cond_2

    .line 4730
    invoke-static {p0}, Landroid/support/v4/view/x;->f(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_2

    .line 4731
    invoke-static {p0}, Landroid/support/v4/view/x;->A(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5715
    instance-of v0, p1, Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_4

    move v0, v3

    .line 4732
    :goto_1
    if-eqz v0, :cond_2

    move v1, v3

    .line 1147
    :cond_2
    if-eqz v1, :cond_0

    .line 1150
    :try_start_0
    sget-object v0, Landroid/support/v4/app/n;->q:Ljava/lang/reflect/Field;

    if-nez v0, :cond_3

    .line 1151
    const-class v0, Landroid/view/animation/Animation;

    const-string/jumbo v1, "mListener"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1152
    sput-object v0, Landroid/support/v4/app/n;->q:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1154
    :cond_3
    sget-object v0, Landroid/support/v4/app/n;->q:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation$AnimationListener;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1163
    :goto_2
    const/4 v1, 0x2

    invoke-static {p0, v1, v2}, Landroid/support/v4/view/x;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1164
    new-instance v1, Landroid/support/v4/app/n$a;

    invoke-direct {v1, p0, p1, v0}, Landroid/support/v4/app/n$a;-><init>(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 5717
    :cond_4
    instance-of v0, p1, Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_6

    move-object v0, p1

    .line 5718
    check-cast v0, Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v4

    move v0, v1

    .line 5719
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 5720
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Landroid/view/animation/AlphaAnimation;

    if-eqz v5, :cond_5

    move v0, v3

    .line 5721
    goto :goto_1

    .line 5719
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    move v0, v1

    .line 5725
    goto :goto_1

    .line 1155
    :catch_0
    move-exception v0

    .line 1156
    const-string/jumbo v1, "FragmentManager"

    const-string/jumbo v3, "No field with the name mListener is found in Animation class"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    .line 1159
    goto :goto_2

    .line 1157
    :catch_1
    move-exception v0

    .line 1158
    const-string/jumbo v1, "FragmentManager"

    const-string/jumbo v3, "Cannot access Animation\'s mListener field"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    goto :goto_2
.end method

.method private a(Ljava/lang/RuntimeException;)V
    .locals 4

    .prologue
    .line 736
    const-string/jumbo v0, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const-string/jumbo v0, "FragmentManager"

    const-string/jumbo v1, "Activity state:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    new-instance v0, Landroid/support/v4/h/e;

    const-string/jumbo v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/h/e;-><init>(Ljava/lang/String;)V

    .line 739
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 740
    iget-object v0, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    if-eqz v0, :cond_0

    .line 742
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    const-string/jumbo v2, "  "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/l;->a(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    :goto_0
    throw p1

    .line 743
    :catch_0
    move-exception v0

    .line 744
    const-string/jumbo v1, "FragmentManager"

    const-string/jumbo v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 748
    :cond_0
    :try_start_1
    const-string/jumbo v0, "  "

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/support/v4/app/n;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 749
    :catch_1
    move-exception v0

    .line 750
    const-string/jumbo v1, "FragmentManager"

    const-string/jumbo v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/c;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2123
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    iget-boolean v8, v0, Landroid/support/v4/app/c;->u:Z

    .line 2125
    iget-object v0, p0, Landroid/support/v4/app/n;->y:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 2126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/n;->y:Ljava/util/ArrayList;

    .line 2130
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2131
    iget-object v0, p0, Landroid/support/v4/app/n;->y:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    move v2, p3

    move v7, v5

    .line 2133
    :goto_1
    if-ge v2, p4, :cond_5

    .line 2134
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    .line 2135
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2136
    if-nez v1, :cond_3

    .line 2137
    iget-object v1, p0, Landroid/support/v4/app/n;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/c;->a(Ljava/util/ArrayList;)V

    .line 2141
    :goto_2
    if-nez v7, :cond_1

    iget-boolean v0, v0, Landroid/support/v4/app/c;->j:Z

    if-eqz v0, :cond_4

    :cond_1
    move v0, v6

    .line 2133
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v7, v0

    goto :goto_1

    .line 2128
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/n;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 2139
    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/n;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/c;->b(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_4
    move v0, v5

    .line 2141
    goto :goto_3

    .line 2143
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/n;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2145
    if-nez v8, :cond_6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 2146
    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/r;->a(Landroid/support/v4/app/n;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2149
    :cond_6
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/app/n;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2152
    if-eqz v8, :cond_d

    .line 2153
    new-instance v5, Landroid/support/v4/h/b;

    invoke-direct {v5}, Landroid/support/v4/h/b;-><init>()V

    .line 2154
    invoke-direct {p0, v5}, Landroid/support/v4/app/n;->b(Landroid/support/v4/h/b;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 2155
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/n;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroid/support/v4/h/b;)I

    move-result v4

    .line 2157
    invoke-static {v5}, Landroid/support/v4/app/n;->a(Landroid/support/v4/h/b;)V

    .line 2160
    :goto_4
    if-eq v4, p3, :cond_7

    if-eqz v8, :cond_7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v6

    .line 2162
    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/r;->a(Landroid/support/v4/app/n;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2164
    iget v0, p0, Landroid/support/v4/app/n;->m:I

    invoke-virtual {p0, v0, v6}, Landroid/support/v4/app/n;->a(IZ)V

    .line 2167
    :cond_7
    :goto_5
    if-ge p3, p4, :cond_b

    .line 2168
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    .line 2169
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2170
    if-eqz v1, :cond_a

    iget v1, v0, Landroid/support/v4/app/c;->n:I

    if-ltz v1, :cond_a

    .line 2171
    iget v1, v0, Landroid/support/v4/app/c;->n:I

    .line 26938
    monitor-enter p0

    .line 26939
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/n;->j:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 26940
    iget-object v2, p0, Landroid/support/v4/app/n;->k:Ljava/util/ArrayList;

    if-nez v2, :cond_8

    .line 26941
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v4/app/n;->k:Ljava/util/ArrayList;

    .line 26943
    :cond_8
    sget-boolean v2, Landroid/support/v4/app/n;->a:Z

    if-eqz v2, :cond_9

    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Freeing back stack index "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26944
    :cond_9
    iget-object v2, p0, Landroid/support/v4/app/n;->k:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26945
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2172
    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v4/app/c;->n:I

    .line 2167
    :cond_a
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 26945
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2175
    :cond_b
    if-eqz v7, :cond_c

    .line 2176
    invoke-virtual {p0}, Landroid/support/v4/app/n;->i()V

    .line 2178
    :cond_c
    return-void

    :cond_d
    move v4, p4

    goto :goto_4
.end method

.method private a(Ljava/lang/String;I)Z
    .locals 6

    .prologue
    .line 816
    invoke-virtual {p0}, Landroid/support/v4/app/n;->g()Z

    .line 817
    invoke-virtual {p0}, Landroid/support/v4/app/n;->e()V

    .line 819
    iget-object v1, p0, Landroid/support/v4/app/n;->w:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/n;->x:Ljava/util/ArrayList;

    const/4 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/n;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v0

    .line 820
    if-eqz v0, :cond_0

    .line 821
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/n;->d:Z

    .line 823
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/n;->w:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/n;->x:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/app/n;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    invoke-virtual {p0}, Landroid/support/v4/app/n;->f()V

    .line 829
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/n;->h()V

    .line 830
    return v0

    .line 825
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/support/v4/app/n;->f()V

    throw v0
.end method

.method private b(Landroid/support/v4/app/h;Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 3132
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    .line 3133
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    .line 35695
    iget-object v0, v0, Landroid/support/v4/app/h;->z:Landroid/support/v4/app/n;

    .line 3134
    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    .line 3135
    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    .line 3136
    invoke-direct {v0, p1, p2, v1}, Landroid/support/v4/app/n;->b(Landroid/support/v4/app/h;Landroid/content/Context;Z)V

    .line 3139
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_2

    .line 3147
    :cond_1
    return-void

    .line 3142
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/n;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/h/i;

    .line 3143
    if-eqz p3, :cond_3

    iget-object v0, v0, Landroid/support/v4/h/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0
.end method

.method private b(Landroid/support/v4/app/h;Landroid/os/Bundle;Z)V
    .locals 2

    .prologue
    .line 3169
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    .line 3170
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    .line 37695
    iget-object v0, v0, Landroid/support/v4/app/h;->z:Landroid/support/v4/app/n;

    .line 3171
    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    .line 3172
    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    .line 3173
    invoke-direct {v0, p1, p2, v1}, Landroid/support/v4/app/n;->b(Landroid/support/v4/app/h;Landroid/os/Bundle;Z)V

    .line 3176
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_2

    .line 3184
    :cond_1
    return-void

    .line 3179
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/n;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/h/i;

    .line 3180
    if-eqz p3, :cond_3

    iget-object v0, v0, Landroid/support/v4/h/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0
.end method

.method private b(Landroid/support/v4/app/h;Z)V
    .locals 2

    .prologue
    .line 3206
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    .line 3207
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    .line 39695
    iget-object v0, v0, Landroid/support/v4/app/h;->z:Landroid/support/v4/app/n;

    .line 3208
    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    .line 3209
    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    .line 3210
    invoke-direct {v0, p1, v1}, Landroid/support/v4/app/n;->b(Landroid/support/v4/app/h;Z)V

    .line 3213
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_2

    .line 3221
    :cond_1
    return-void

    .line 3216
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/n;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/h/i;

    .line 3217
    if-eqz p2, :cond_3

    iget-object v0, v0, Landroid/support/v4/h/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0
.end method

.method private b(Landroid/support/v4/h/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/h/b",
            "<",
            "Landroid/support/v4/app/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2375
    iget v0, p0, Landroid/support/v4/app/n;->m:I

    if-gtz v0, :cond_1

    .line 2391
    :cond_0
    return-void

    .line 2379
    :cond_1
    iget v0, p0, Landroid/support/v4/app/n;->m:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2380
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    move v6, v5

    :goto_0
    move v7, v5

    .line 2381
    :goto_1
    if-ge v7, v6, :cond_0

    .line 2382
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/h;

    .line 2383
    iget v0, v1, Landroid/support/v4/app/h;->k:I

    if-ge v0, v2, :cond_2

    .line 2384
    invoke-virtual {v1}, Landroid/support/v4/app/h;->z()I

    move-result v3

    invoke-virtual {v1}, Landroid/support/v4/app/h;->A()I

    move-result v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/h;IIIZ)V

    .line 2386
    iget-object v0, v1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Landroid/support/v4/app/h;->H:Z

    if-nez v0, :cond_2

    iget-boolean v0, v1, Landroid/support/v4/app/h;->X:Z

    if-eqz v0, :cond_2

    .line 2387
    invoke-virtual {p1, v1}, Landroid/support/v4/h/b;->add(Ljava/lang/Object;)Z

    .line 2381
    :cond_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 2380
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v6, v0

    goto :goto_0
.end method

.method private b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/c;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 2031
    iget-object v0, p0, Landroid/support/v4/app/n;->B:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    move v3, v2

    move v4, v0

    .line 2032
    :goto_1
    if-ge v3, v4, :cond_6

    .line 2033
    iget-object v0, p0, Landroid/support/v4/app/n;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/n$e;

    .line 2034
    if-eqz p1, :cond_1

    .line 22542
    iget-boolean v1, v0, Landroid/support/v4/app/n$e;->a:Z

    .line 2034
    if-nez v1, :cond_1

    .line 23542
    iget-object v1, v0, Landroid/support/v4/app/n$e;->b:Landroid/support/v4/app/c;

    .line 2035
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2036
    if-eq v1, v6, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2037
    invoke-virtual {v0}, Landroid/support/v4/app/n$e;->d()V

    move v0, v3

    move v1, v4

    .line 2032
    :goto_2
    add-int/lit8 v3, v0, 0x1

    move v4, v1

    goto :goto_1

    .line 2031
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 23581
    :cond_1
    iget v1, v0, Landroid/support/v4/app/n$e;->c:I

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 2041
    :goto_3
    if-nez v1, :cond_2

    if-eqz p1, :cond_5

    .line 24542
    iget-object v1, v0, Landroid/support/v4/app/n$e;->b:Landroid/support/v4/app/c;

    .line 2042
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v1, p1, v2, v5}, Landroid/support/v4/app/c;->a(Ljava/util/ArrayList;II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2043
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/n;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2044
    add-int/lit8 v3, v3, -0x1

    .line 2045
    add-int/lit8 v4, v4, -0x1

    .line 2047
    if-eqz p1, :cond_4

    .line 25542
    iget-boolean v1, v0, Landroid/support/v4/app/n$e;->a:Z

    .line 2047
    if-nez v1, :cond_4

    .line 26542
    iget-object v1, v0, Landroid/support/v4/app/n$e;->b:Landroid/support/v4/app/c;

    .line 2048
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v6, :cond_4

    .line 2049
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2051
    invoke-virtual {v0}, Landroid/support/v4/app/n$e;->d()V

    move v0, v3

    move v1, v4

    goto :goto_2

    :cond_3
    move v1, v2

    .line 23581
    goto :goto_3

    .line 2053
    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/app/n$e;->c()V

    :cond_5
    move v0, v3

    move v1, v4

    goto :goto_2

    .line 2057
    :cond_6
    return-void
.end method

.method private static b(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/c;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 2352
    :goto_0
    if-ge p2, p3, :cond_2

    .line 2353
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    .line 2354
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2355
    if-eqz v1, :cond_1

    .line 2356
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/c;->a(I)V

    .line 2359
    add-int/lit8 v1, p3, -0x1

    if-ne p2, v1, :cond_0

    move v1, v2

    .line 2360
    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v4/app/c;->a(Z)V

    .line 2352
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2359
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 2362
    :cond_1
    invoke-virtual {v0, v2}, Landroid/support/v4/app/c;->a(I)V

    .line 2363
    invoke-virtual {v0}, Landroid/support/v4/app/c;->d()V

    goto :goto_2

    .line 2366
    :cond_2
    return-void
.end method

.method public static c(I)I
    .locals 1

    .prologue
    .line 3350
    const/4 v0, 0x0

    .line 3351
    sparse-switch p0, :sswitch_data_0

    .line 3362
    :goto_0
    return v0

    .line 3353
    :sswitch_0
    const/16 v0, 0x2002

    .line 3354
    goto :goto_0

    .line 3356
    :sswitch_1
    const/16 v0, 0x1001

    .line 3357
    goto :goto_0

    .line 3359
    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    .line 3351
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private c(Landroid/support/v4/app/h;Landroid/os/Bundle;Z)V
    .locals 2

    .prologue
    .line 3278
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    .line 3279
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    .line 43695
    iget-object v0, v0, Landroid/support/v4/app/h;->z:Landroid/support/v4/app/n;

    .line 3280
    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    .line 3281
    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    .line 3282
    invoke-direct {v0, p1, p2, v1}, Landroid/support/v4/app/n;->c(Landroid/support/v4/app/h;Landroid/os/Bundle;Z)V

    .line 3285
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_2

    .line 3293
    :cond_1
    return-void

    .line 3288
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/n;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/h/i;

    .line 3289
    if-eqz p3, :cond_3

    iget-object v0, v0, Landroid/support/v4/h/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0
.end method

.method private c(Landroid/support/v4/app/h;Z)V
    .locals 2

    .prologue
    .line 3224
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    .line 3225
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    .line 40695
    iget-object v0, v0, Landroid/support/v4/app/h;->z:Landroid/support/v4/app/n;

    .line 3226
    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    .line 3227
    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    .line 3228
    invoke-direct {v0, p1, v1}, Landroid/support/v4/app/n;->c(Landroid/support/v4/app/h;Z)V

    .line 3231
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_2

    .line 3239
    :cond_1
    return-void

    .line 3234
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/n;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/h/i;

    .line 3235
    if-eqz p2, :cond_3

    iget-object v0, v0, Landroid/support/v4/h/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0
.end method

.method private c(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/c;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2439
    monitor-enter p0

    .line 2440
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/n;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2441
    :cond_0
    monitor-exit p0

    move v0, v1

    .line 2451
    :goto_0
    return v0

    .line 2444
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 2445
    :goto_1
    if-ge v2, v3, :cond_2

    .line 2446
    iget-object v0, p0, Landroid/support/v4/app/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/n$c;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/n$c;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 2445
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 2448
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2449
    iget-object v0, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    .line 29202
    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/os/Handler;

    .line 2449
    iget-object v2, p0, Landroid/support/v4/app/n;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2450
    monitor-exit p0

    .line 2451
    if-lez v3, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    .line 2450
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v0, v1

    .line 2451
    goto :goto_0
.end method

.method private d(Landroid/support/v4/app/h;Z)V
    .locals 2

    .prologue
    .line 3242
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    .line 3243
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    .line 41695
    iget-object v0, v0, Landroid/support/v4/app/h;->z:Landroid/support/v4/app/n;

    .line 3244
    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    .line 3245
    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    .line 3246
    invoke-direct {v0, p1, v1}, Landroid/support/v4/app/n;->d(Landroid/support/v4/app/h;Z)V

    .line 3249
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_2

    .line 3257
    :cond_1
    return-void

    .line 3252
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/n;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/h/i;

    .line 3253
    if-eqz p2, :cond_3

    iget-object v0, v0, Landroid/support/v4/h/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0
.end method

.method public static e(Landroid/support/v4/app/h;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1718
    sget-boolean v1, Landroid/support/v4/app/n;->a:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "hide: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/app/h;->H:Z

    if-nez v1, :cond_1

    .line 1720
    iput-boolean v0, p0, Landroid/support/v4/app/h;->H:Z

    .line 1723
    iget-boolean v1, p0, Landroid/support/v4/app/h;->Y:Z

    if-nez v1, :cond_2

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/h;->Y:Z

    .line 1725
    :cond_1
    return-void

    .line 1723
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Landroid/support/v4/app/h;Z)V
    .locals 2

    .prologue
    .line 3260
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    .line 3261
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    .line 42695
    iget-object v0, v0, Landroid/support/v4/app/h;->z:Landroid/support/v4/app/n;

    .line 3262
    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    .line 3263
    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    .line 3264
    invoke-direct {v0, p1, v1}, Landroid/support/v4/app/n;->e(Landroid/support/v4/app/h;Z)V

    .line 3267
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_2

    .line 3275
    :cond_1
    return-void

    .line 3270
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/n;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/h/i;

    .line 3271
    if-eqz p2, :cond_3

    iget-object v0, v0, Landroid/support/v4/h/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0
.end method

.method public static f(Landroid/support/v4/app/h;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1734
    sget-boolean v1, Landroid/support/v4/app/n;->a:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "show: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/app/h;->H:Z

    if-eqz v1, :cond_2

    .line 1736
    iput-boolean v0, p0, Landroid/support/v4/app/h;->H:Z

    .line 1739
    iget-boolean v1, p0, Landroid/support/v4/app/h;->Y:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Landroid/support/v4/app/h;->Y:Z

    .line 1741
    :cond_2
    return-void
.end method

.method private f(Landroid/support/v4/app/h;Z)V
    .locals 2

    .prologue
    .line 3296
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    .line 3297
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    .line 44695
    iget-object v0, v0, Landroid/support/v4/app/h;->z:Landroid/support/v4/app/n;

    .line 3298
    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    .line 3299
    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    .line 3300
    invoke-direct {v0, p1, v1}, Landroid/support/v4/app/n;->f(Landroid/support/v4/app/h;Z)V

    .line 3303
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_2

    .line 3311
    :cond_1
    return-void

    .line 3306
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/n;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/h/i;

    .line 3307
    if-eqz p2, :cond_3

    iget-object v0, v0, Landroid/support/v4/h/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0
.end method

.method private g(Landroid/support/v4/app/h;Z)V
    .locals 2

    .prologue
    .line 3314
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    .line 3315
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    .line 45695
    iget-object v0, v0, Landroid/support/v4/app/h;->z:Landroid/support/v4/app/n;

    .line 3316
    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    .line 3317
    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    .line 3318
    invoke-direct {v0, p1, v1}, Landroid/support/v4/app/n;->g(Landroid/support/v4/app/h;Z)V

    .line 3321
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_2

    .line 3329
    :cond_1
    return-void

    .line 3324
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/n;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/h/i;

    .line 3325
    if-eqz p2, :cond_3

    iget-object v0, v0, Landroid/support/v4/h/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0
.end method

.method private h(Landroid/support/v4/app/h;Z)V
    .locals 2

    .prologue
    .line 3332
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    .line 3333
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    .line 46695
    iget-object v0, v0, Landroid/support/v4/app/h;->z:Landroid/support/v4/app/n;

    .line 3334
    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    .line 3335
    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    .line 3336
    invoke-direct {v0, p1, v1}, Landroid/support/v4/app/n;->h(Landroid/support/v4/app/h;Z)V

    .line 3339
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_2

    .line 3347
    :cond_1
    return-void

    .line 3342
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/n;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/h/i;

    .line 3343
    if-eqz p2, :cond_3

    iget-object v0, v0, Landroid/support/v4/h/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0
.end method

.method private i(Landroid/support/v4/app/h;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1472
    iget v2, p0, Landroid/support/v4/app/n;->m:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/h;IIIZ)V

    .line 1473
    return-void
.end method

.method private j(Landroid/support/v4/app/h;)V
    .locals 2

    .prologue
    .line 2586
    iget-object v0, p1, Landroid/support/v4/app/h;->Q:Landroid/view/View;

    if-nez v0, :cond_1

    .line 2599
    :cond_0
    :goto_0
    return-void

    .line 2589
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/n;->A:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 2590
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/n;->A:Landroid/util/SparseArray;

    .line 2594
    :goto_1
    iget-object v0, p1, Landroid/support/v4/app/h;->Q:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/n;->A:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2595
    iget-object v0, p0, Landroid/support/v4/app/n;->A:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2596
    iget-object v0, p0, Landroid/support/v4/app/n;->A:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/h;->m:Landroid/util/SparseArray;

    .line 2597
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/n;->A:Landroid/util/SparseArray;

    goto :goto_0

    .line 2592
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/n;->A:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_1
.end method

.method private u()V
    .locals 3

    .prologue
    .line 1841
    iget-boolean v0, p0, Landroid/support/v4/app/n;->s:Z

    if-eqz v0, :cond_0

    .line 1842
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1845
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->u:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1846
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can not perform this action inside of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/app/n;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1849
    :cond_1
    return-void
.end method

.method private v()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1881
    monitor-enter p0

    .line 1882
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/n;->B:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v4/app/n;->B:Ljava/util/ArrayList;

    .line 1883
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    .line 1884
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/n;->c:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v4/app/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v0, :cond_3

    .line 1885
    :goto_1
    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    .line 1886
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    .line 20202
    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/os/Handler;

    .line 1886
    iget-object v1, p0, Landroid/support/v4/app/n;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1887
    iget-object v0, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    .line 21202
    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/os/Handler;

    .line 1887
    iget-object v1, p0, Landroid/support/v4/app/n;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1889
    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    move v2, v1

    .line 1883
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1884
    goto :goto_1

    .line 1889
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/c;)I
    .locals 4

    .prologue
    .line 1893
    monitor-enter p0

    .line 1894
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/n;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1895
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1896
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/n;->j:Ljava/util/ArrayList;

    .line 1898
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1899
    sget-boolean v1, Landroid/support/v4/app/n;->a:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Setting back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1901
    monitor-exit p0

    .line 1907
    :goto_0
    return v0

    .line 1904
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/n;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1905
    sget-boolean v1, Landroid/support/v4/app/n;->a:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Adding back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1907
    monitor-exit p0

    goto :goto_0

    .line 1909
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(I)Landroid/support/v4/app/h;
    .locals 3

    .prologue
    .line 1784
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1786
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1787
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 1788
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/support/v4/app/h;->E:I

    if-ne v2, p1, :cond_1

    .line 1802
    :cond_0
    :goto_1
    return-object v0

    .line 1786
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1793
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1795
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    .line 1796
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 1797
    if-eqz v0, :cond_3

    iget v2, v0, Landroid/support/v4/app/h;->E:I

    if-eq v2, p1, :cond_0

    .line 1795
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 1802
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Landroid/support/v4/app/h;
    .locals 3

    .prologue
    .line 1807
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1809
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1810
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 1811
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/support/v4/app/h;->G:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1825
    :cond_0
    :goto_1
    return-object v0

    .line 1809
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1816
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1818
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    .line 1819
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 1820
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/support/v4/app/h;->G:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1818
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 1825
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a()Landroid/support/v4/app/q;
    .locals 1

    .prologue
    .line 758
    new-instance v0, Landroid/support/v4/app/c;

    invoke-direct {v0, p0}, Landroid/support/v4/app/c;-><init>(Landroid/support/v4/app/n;)V

    return-object v0
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x1

    .line 3391
    const-string/jumbo v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v4

    .line 3480
    :goto_0
    return-object v0

    .line 3395
    :cond_0
    const-string/jumbo v0, "class"

    invoke-interface {p4, v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3396
    sget-object v1, Landroid/support/v4/app/n$b;->a:[I

    invoke-virtual {p3, p4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3397
    if-nez v0, :cond_10

    .line 3398
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 3400
    :goto_1
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 3401
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3402
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3404
    iget-object v0, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    .line 47198
    iget-object v0, v0, Landroid/support/v4/app/l;->c:Landroid/content/Context;

    .line 3404
    invoke-static {v0, v6}, Landroid/support/v4/app/h;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v4

    .line 3407
    goto :goto_0

    .line 3410
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 3411
    :goto_2
    if-ne v1, v5, :cond_3

    if-ne v7, v5, :cond_3

    if-nez v8, :cond_3

    .line 3412
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v1, v3

    .line 3410
    goto :goto_2

    .line 3419
    :cond_3
    if-eq v7, v5, :cond_7

    invoke-virtual {p0, v7}, Landroid/support/v4/app/n;->a(I)Landroid/support/v4/app/h;

    move-result-object v0

    .line 3420
    :goto_3
    if-nez v0, :cond_4

    if-eqz v8, :cond_4

    .line 3421
    invoke-virtual {p0, v8}, Landroid/support/v4/app/n;->a(Ljava/lang/String;)Landroid/support/v4/app/h;

    move-result-object v0

    .line 3423
    :cond_4
    if-nez v0, :cond_5

    if-eq v1, v5, :cond_5

    .line 3424
    invoke-virtual {p0, v1}, Landroid/support/v4/app/n;->a(I)Landroid/support/v4/app/h;

    move-result-object v0

    .line 3427
    :cond_5
    sget-boolean v4, Landroid/support/v4/app/n;->a:Z

    if-eqz v4, :cond_6

    const-string/jumbo v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onCreateView: id=0x"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3428
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, " fname="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, " existing="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3427
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3430
    :cond_6
    if-nez v0, :cond_9

    .line 3431
    invoke-static {p3, v6}, Landroid/support/v4/app/h;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/h;

    move-result-object v4

    .line 3432
    iput-boolean v2, v4, Landroid/support/v4/app/h;->v:Z

    .line 3433
    if-eqz v7, :cond_8

    move v0, v7

    :goto_4
    iput v0, v4, Landroid/support/v4/app/h;->E:I

    .line 3434
    iput v1, v4, Landroid/support/v4/app/h;->F:I

    .line 3435
    iput-object v8, v4, Landroid/support/v4/app/h;->G:Ljava/lang/String;

    .line 3436
    iput-boolean v2, v4, Landroid/support/v4/app/h;->w:Z

    .line 3437
    iput-object p0, v4, Landroid/support/v4/app/h;->z:Landroid/support/v4/app/n;

    .line 3438
    iget-object v0, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    iput-object v0, v4, Landroid/support/v4/app/h;->A:Landroid/support/v4/app/l;

    .line 3439
    iget-object v0, v4, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/support/v4/app/h;->n()V

    .line 3440
    invoke-virtual {p0, v4, v2}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/h;Z)V

    move-object v1, v4

    .line 3464
    :goto_5
    iget v0, p0, Landroid/support/v4/app/n;->m:I

    if-gtz v0, :cond_c

    iget-boolean v0, v1, Landroid/support/v4/app/h;->v:Z

    if-eqz v0, :cond_c

    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 3465
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/h;IIIZ)V

    .line 3470
    :goto_6
    iget-object v0, v1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    if-nez v0, :cond_d

    .line 3471
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not create a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v0, v4

    .line 3419
    goto/16 :goto_3

    :cond_8
    move v0, v1

    .line 3433
    goto :goto_4

    .line 3442
    :cond_9
    iget-boolean v4, v0, Landroid/support/v4/app/h;->w:Z

    if-eqz v4, :cond_a

    .line 3445
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": Duplicate id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3446
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", or parent id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3447
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with another fragment for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3452
    :cond_a
    iput-boolean v2, v0, Landroid/support/v4/app/h;->w:Z

    .line 3453
    iget-object v1, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    iput-object v1, v0, Landroid/support/v4/app/h;->A:Landroid/support/v4/app/l;

    .line 3457
    iget-boolean v1, v0, Landroid/support/v4/app/h;->K:Z

    if-nez v1, :cond_b

    .line 3458
    iget-object v1, v0, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->n()V

    :cond_b
    move-object v1, v0

    goto/16 :goto_5

    .line 3467
    :cond_c
    invoke-direct {p0, v1}, Landroid/support/v4/app/n;->i(Landroid/support/v4/app/h;)V

    goto/16 :goto_6

    .line 3474
    :cond_d
    if-eqz v7, :cond_e

    .line 3475
    iget-object v0, v1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setId(I)V

    .line 3477
    :cond_e
    iget-object v0, v1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    .line 3478
    iget-object v0, v1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3480
    :cond_f
    iget-object v0, v1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    goto/16 :goto_0

    :cond_10
    move-object v6, v0

    goto/16 :goto_1
.end method

.method final a(IZ)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1577
    iget-object v0, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1578
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1581
    :cond_0
    if-nez p2, :cond_2

    iget v0, p0, Landroid/support/v4/app/n;->m:I

    if-ne p1, v0, :cond_2

    .line 1624
    :cond_1
    :goto_0
    return-void

    .line 1585
    :cond_2
    iput p1, p0, Landroid/support/v4/app/n;->m:I

    .line 1587
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1591
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1592
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    move v1, v2

    .line 1593
    :goto_1
    if-ge v3, v4, :cond_4

    .line 1594
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 1595
    invoke-virtual {p0, v0}, Landroid/support/v4/app/n;->b(Landroid/support/v4/app/h;)V

    .line 1596
    iget-object v5, v0, Landroid/support/v4/app/h;->T:Landroid/support/v4/app/u;

    if-eqz v5, :cond_9

    .line 1597
    iget-object v0, v0, Landroid/support/v4/app/h;->T:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->a()Z

    move-result v0

    or-int/2addr v0, v1

    .line 1593
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    .line 1604
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 1605
    :goto_3
    if-ge v3, v4, :cond_6

    .line 1606
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 1607
    if-eqz v0, :cond_8

    iget-boolean v5, v0, Landroid/support/v4/app/h;->u:Z

    if-nez v5, :cond_5

    iget-boolean v5, v0, Landroid/support/v4/app/h;->I:Z

    if-eqz v5, :cond_8

    :cond_5
    iget-boolean v5, v0, Landroid/support/v4/app/h;->X:Z

    if-nez v5, :cond_8

    .line 1608
    invoke-virtual {p0, v0}, Landroid/support/v4/app/n;->b(Landroid/support/v4/app/h;)V

    .line 1609
    iget-object v5, v0, Landroid/support/v4/app/h;->T:Landroid/support/v4/app/u;

    if-eqz v5, :cond_8

    .line 1610
    iget-object v0, v0, Landroid/support/v4/app/h;->T:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->a()Z

    move-result v0

    or-int/2addr v0, v1

    .line 1605
    :goto_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_3

    .line 1615
    :cond_6
    if-nez v1, :cond_7

    .line 1616
    invoke-virtual {p0}, Landroid/support/v4/app/n;->d()V

    .line 1619
    :cond_7
    iget-boolean v0, p0, Landroid/support/v4/app/n;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/n;->m:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1620
    iget-object v0, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->d()V

    .line 1621
    iput-boolean v2, p0, Landroid/support/v4/app/n;->r:Z

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_9
    move v0, v1

    goto :goto_2
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 2983
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2984
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2985
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 2986
    if-eqz v0, :cond_0

    .line 34264
    invoke-virtual {v0, p1}, Landroid/support/v4/app/h;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 34265
    iget-object v2, v0, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    if-eqz v2, :cond_0

    .line 34266
    iget-object v0, v0, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->a(Landroid/content/res/Configuration;)V

    .line 2984
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2991
    :cond_1
    return-void
.end method

.method final a(Landroid/os/Parcelable;Landroid/support/v4/app/o;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 2756
    if-nez p1, :cond_1

    .line 2876
    :cond_0
    :goto_0
    return-void

    .line 2757
    :cond_1
    check-cast p1, Landroid/support/v4/app/FragmentManagerState;

    .line 2758
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    if-eqz v0, :cond_0

    .line 2764
    if-eqz p2, :cond_1c

    .line 32047
    iget-object v6, p2, Landroid/support/v4/app/o;->a:Ljava/util/List;

    .line 32054
    iget-object v3, p2, Landroid/support/v4/app/o;->b:Ljava/util/List;

    .line 2767
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_1
    move v5, v2

    .line 2768
    :goto_2
    if-ge v5, v1, :cond_5

    .line 2769
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 2770
    sget-boolean v7, Landroid/support/v4/app/n;->a:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "restoreAllState: re-attaching retained "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2771
    :cond_2
    iget-object v7, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    iget v8, v0, Landroid/support/v4/app/h;->n:I

    aget-object v7, v7, v8

    .line 2772
    iput-object v0, v7, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/h;

    .line 2773
    iput-object v4, v0, Landroid/support/v4/app/h;->m:Landroid/util/SparseArray;

    .line 2774
    iput v2, v0, Landroid/support/v4/app/h;->y:I

    .line 2775
    iput-boolean v2, v0, Landroid/support/v4/app/h;->w:Z

    .line 2776
    iput-boolean v2, v0, Landroid/support/v4/app/h;->t:Z

    .line 2777
    iput-object v4, v0, Landroid/support/v4/app/h;->q:Landroid/support/v4/app/h;

    .line 2778
    iget-object v8, v7, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    if-eqz v8, :cond_3

    .line 2779
    iget-object v8, v7, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    iget-object v9, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    .line 32198
    iget-object v9, v9, Landroid/support/v4/app/l;->c:Landroid/content/Context;

    .line 2779
    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2780
    iget-object v8, v7, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    const-string/jumbo v9, "android:view_state"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v8

    iput-object v8, v0, Landroid/support/v4/app/h;->m:Landroid/util/SparseArray;

    .line 2782
    iget-object v7, v7, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    iput-object v7, v0, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    .line 2768
    :cond_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    :cond_4
    move v1, v2

    .line 2767
    goto :goto_1

    :cond_5
    move-object v1, v3

    .line 2789
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v3, v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    .line 2790
    iget-object v0, p0, Landroid/support/v4/app/n;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 2791
    iget-object v0, p0, Landroid/support/v4/app/n;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_6
    move v3, v2

    .line 2793
    :goto_4
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v0, v0

    if-ge v3, v0, :cond_e

    .line 2794
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    aget-object v5, v0, v3

    .line 2795
    if-eqz v5, :cond_b

    .line 2797
    if-eqz v1, :cond_1b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1b

    .line 2798
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/o;

    .line 2800
    :goto_5
    iget-object v6, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    iget-object v7, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    .line 33103
    iget-object v8, v5, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/h;

    if-nez v8, :cond_9

    .line 33198
    iget-object v8, v6, Landroid/support/v4/app/l;->c:Landroid/content/Context;

    .line 33105
    iget-object v9, v5, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;

    if-eqz v9, :cond_7

    .line 33106
    iget-object v9, v5, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 33109
    :cond_7
    iget-object v9, v5, Landroid/support/v4/app/FragmentState;->a:Ljava/lang/String;

    iget-object v10, v5, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;

    invoke-static {v8, v9, v10}, Landroid/support/v4/app/h;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/h;

    move-result-object v9

    iput-object v9, v5, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/h;

    .line 33111
    iget-object v9, v5, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    if-eqz v9, :cond_8

    .line 33112
    iget-object v9, v5, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 33113
    iget-object v8, v5, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/h;

    iget-object v9, v5, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    iput-object v9, v8, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    .line 33115
    :cond_8
    iget-object v8, v5, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/h;

    iget v9, v5, Landroid/support/v4/app/FragmentState;->b:I

    invoke-virtual {v8, v9, v7}, Landroid/support/v4/app/h;->a(ILandroid/support/v4/app/h;)V

    .line 33116
    iget-object v7, v5, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/h;

    iget-boolean v8, v5, Landroid/support/v4/app/FragmentState;->c:Z

    iput-boolean v8, v7, Landroid/support/v4/app/h;->v:Z

    .line 33117
    iget-object v7, v5, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/h;

    iput-boolean v11, v7, Landroid/support/v4/app/h;->x:Z

    .line 33118
    iget-object v7, v5, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/h;

    iget v8, v5, Landroid/support/v4/app/FragmentState;->d:I

    iput v8, v7, Landroid/support/v4/app/h;->E:I

    .line 33119
    iget-object v7, v5, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/h;

    iget v8, v5, Landroid/support/v4/app/FragmentState;->e:I

    iput v8, v7, Landroid/support/v4/app/h;->F:I

    .line 33120
    iget-object v7, v5, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/h;

    iget-object v8, v5, Landroid/support/v4/app/FragmentState;->f:Ljava/lang/String;

    iput-object v8, v7, Landroid/support/v4/app/h;->G:Ljava/lang/String;

    .line 33121
    iget-object v7, v5, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/h;

    iget-boolean v8, v5, Landroid/support/v4/app/FragmentState;->g:Z

    iput-boolean v8, v7, Landroid/support/v4/app/h;->J:Z

    .line 33122
    iget-object v7, v5, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/h;

    iget-boolean v8, v5, Landroid/support/v4/app/FragmentState;->h:Z

    iput-boolean v8, v7, Landroid/support/v4/app/h;->I:Z

    .line 33123
    iget-object v7, v5, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/h;

    iget-boolean v8, v5, Landroid/support/v4/app/FragmentState;->j:Z

    iput-boolean v8, v7, Landroid/support/v4/app/h;->H:Z

    .line 33124
    iget-object v7, v5, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/h;

    iget-object v6, v6, Landroid/support/v4/app/l;->f:Landroid/support/v4/app/n;

    iput-object v6, v7, Landroid/support/v4/app/h;->z:Landroid/support/v4/app/n;

    .line 33126
    sget-boolean v6, Landroid/support/v4/app/n;->a:Z

    if-eqz v6, :cond_9

    const-string/jumbo v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Instantiated fragment "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/h;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33129
    :cond_9
    iget-object v6, v5, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/h;

    iput-object v0, v6, Landroid/support/v4/app/h;->C:Landroid/support/v4/app/o;

    .line 33130
    iget-object v0, v5, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/h;

    .line 2801
    sget-boolean v6, Landroid/support/v4/app/n;->a:Z

    if-eqz v6, :cond_a

    const-string/jumbo v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "restoreAllState: active #"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    :cond_a
    iget-object v6, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2806
    iput-object v4, v5, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/h;

    .line 2793
    :goto_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_4

    .line 2808
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2809
    iget-object v0, p0, Landroid/support/v4/app/n;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 2810
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/n;->g:Ljava/util/ArrayList;

    .line 2812
    :cond_c
    sget-boolean v0, Landroid/support/v4/app/n;->a:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "restoreAllState: avail #"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    :cond_d
    iget-object v0, p0, Landroid/support/v4/app/n;->g:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2818
    :cond_e
    if-eqz p2, :cond_12

    .line 34047
    iget-object v6, p2, Landroid/support/v4/app/o;->a:Ljava/util/List;

    .line 2820
    if-eqz v6, :cond_10

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move v3, v0

    :goto_7
    move v5, v2

    .line 2821
    :goto_8
    if-ge v5, v3, :cond_12

    .line 2822
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 2823
    iget v1, v0, Landroid/support/v4/app/h;->r:I

    if-ltz v1, :cond_f

    .line 2824
    iget v1, v0, Landroid/support/v4/app/h;->r:I

    iget-object v7, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_11

    .line 2825
    iget-object v1, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    iget v7, v0, Landroid/support/v4/app/h;->r:I

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/h;

    iput-object v1, v0, Landroid/support/v4/app/h;->q:Landroid/support/v4/app/h;

    .line 2821
    :cond_f
    :goto_9
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_8

    :cond_10
    move v3, v2

    .line 2820
    goto :goto_7

    .line 2827
    :cond_11
    const-string/jumbo v1, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Re-attaching retained fragment "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " target no longer exists: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/support/v4/app/h;->r:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    iput-object v4, v0, Landroid/support/v4/app/h;->q:Landroid/support/v4/app/h;

    goto :goto_9

    .line 2836
    :cond_12
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    if-eqz v0, :cond_16

    .line 2837
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    move v1, v2

    .line 2838
    :goto_a
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_17

    .line 2839
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 2840
    if-nez v0, :cond_13

    .line 2841
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "No instantiated fragment for index #"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Landroid/support/v4/app/n;->a(Ljava/lang/RuntimeException;)V

    .line 2844
    :cond_13
    iput-boolean v11, v0, Landroid/support/v4/app/h;->t:Z

    .line 2845
    sget-boolean v3, Landroid/support/v4/app/n;->a:Z

    if-eqz v3, :cond_14

    const-string/jumbo v3, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "restoreAllState: added #"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    :cond_14
    iget-object v3, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2847
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already added!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2849
    :cond_15
    iget-object v3, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2838
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 2852
    :cond_16
    iput-object v4, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    .line 2856
    :cond_17
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    if-eqz v0, :cond_1a

    .line 2857
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    move v0, v2

    .line 2858
    :goto_b
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2859
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/support/v4/app/BackStackState;->a(Landroid/support/v4/app/n;)Landroid/support/v4/app/c;

    move-result-object v1

    .line 2860
    sget-boolean v3, Landroid/support/v4/app/n;->a:Z

    if-eqz v3, :cond_18

    .line 2861
    const-string/jumbo v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "restoreAllState: back stack #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/support/v4/app/c;->n:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    new-instance v3, Landroid/support/v4/h/e;

    const-string/jumbo v4, "FragmentManager"

    invoke-direct {v3, v4}, Landroid/support/v4/h/e;-><init>(Ljava/lang/String;)V

    .line 2864
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2865
    const-string/jumbo v3, "  "

    invoke-virtual {v1, v3, v4, v2}, Landroid/support/v4/app/c;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 2866
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 2868
    :cond_18
    iget-object v3, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2869
    iget v3, v1, Landroid/support/v4/app/c;->n:I

    if-ltz v3, :cond_19

    .line 2870
    iget v3, v1, Landroid/support/v4/app/c;->n:I

    invoke-direct {p0, v3, v1}, Landroid/support/v4/app/n;->a(ILandroid/support/v4/app/c;)V

    .line 2858
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2874
    :cond_1a
    iput-object v4, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    goto/16 :goto_0

    :cond_1b
    move-object v0, v4

    goto/16 :goto_5

    :cond_1c
    move-object v1, v4

    goto/16 :goto_3
.end method

.method public final a(Landroid/support/v4/app/h;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1125
    iget-boolean v0, p1, Landroid/support/v4/app/h;->R:Z

    if-eqz v0, :cond_0

    .line 1126
    iget-boolean v0, p0, Landroid/support/v4/app/n;->d:Z

    if-eqz v0, :cond_1

    .line 1128
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/n;->v:Z

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1131
    :cond_1
    iput-boolean v3, p1, Landroid/support/v4/app/h;->R:Z

    .line 1132
    iget v2, p0, Landroid/support/v4/app/n;->m:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/h;IIIZ)V

    goto :goto_0
.end method

.method final a(Landroid/support/v4/app/h;IIIZ)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 1176
    iget-boolean v0, p1, Landroid/support/v4/app/h;->t:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/support/v4/app/h;->I:Z

    if-eqz v0, :cond_1

    :cond_0
    if-le p2, v5, :cond_1

    move p2, v5

    .line 1179
    :cond_1
    iget-boolean v0, p1, Landroid/support/v4/app/h;->u:Z

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/support/v4/app/h;->k:I

    if-le p2, v0, :cond_2

    .line 1181
    iget p2, p1, Landroid/support/v4/app/h;->k:I

    .line 1185
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/h;->R:Z

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/support/v4/app/h;->k:I

    if-ge v0, v9, :cond_3

    if-le p2, v6, :cond_3

    move p2, v6

    .line 1188
    :cond_3
    iget v0, p1, Landroid/support/v4/app/h;->k:I

    if-ge v0, p2, :cond_2f

    .line 1192
    iget-boolean v0, p1, Landroid/support/v4/app/h;->v:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Landroid/support/v4/app/h;->w:Z

    if-nez v0, :cond_5

    .line 1469
    :cond_4
    :goto_0
    return-void

    .line 1195
    :cond_5
    invoke-virtual {p1}, Landroid/support/v4/app/h;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1200
    invoke-virtual {p1, v7}, Landroid/support/v4/app/h;->a(Landroid/view/View;)V

    .line 1201
    invoke-virtual {p1}, Landroid/support/v4/app/h;->F()I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/h;IIIZ)V

    .line 1203
    :cond_6
    iget v0, p1, Landroid/support/v4/app/h;->k:I

    packed-switch v0, :pswitch_data_0

    .line 1464
    :cond_7
    :goto_1
    iget v0, p1, Landroid/support/v4/app/h;->k:I

    if-eq v0, p2, :cond_4

    .line 1465
    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "moveToState: Fragment state for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not updated inline; expected state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/support/v4/app/h;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    iput p2, p1, Landroid/support/v4/app/h;->k:I

    goto :goto_0

    .line 1205
    :pswitch_0
    sget-boolean v0, Landroid/support/v4/app/n;->a:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "moveto CREATED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_8
    iget-object v0, p1, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    if-eqz v0, :cond_a

    .line 1207
    iget-object v0, p1, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    .line 6198
    iget-object v1, v1, Landroid/support/v4/app/l;->c:Landroid/content/Context;

    .line 1207
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1208
    iget-object v0, p1, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    const-string/jumbo v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/h;->m:Landroid/util/SparseArray;

    .line 1210
    iget-object v0, p1, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    const-string/jumbo v1, "android:target_state"

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/n;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/h;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/h;->q:Landroid/support/v4/app/h;

    .line 1212
    iget-object v0, p1, Landroid/support/v4/app/h;->q:Landroid/support/v4/app/h;

    if-eqz v0, :cond_9

    .line 1213
    iget-object v0, p1, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    const-string/jumbo v1, "android:target_req_state"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/support/v4/app/h;->s:I

    .line 1216
    :cond_9
    iget-object v0, p1, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    const-string/jumbo v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/support/v4/app/h;->S:Z

    .line 1218
    iget-boolean v0, p1, Landroid/support/v4/app/h;->S:Z

    if-nez v0, :cond_a

    .line 1219
    iput-boolean v5, p1, Landroid/support/v4/app/h;->R:Z

    .line 1220
    if-le p2, v6, :cond_a

    move p2, v6

    .line 1225
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    iput-object v0, p1, Landroid/support/v4/app/h;->A:Landroid/support/v4/app/l;

    .line 1226
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    iput-object v0, p1, Landroid/support/v4/app/h;->D:Landroid/support/v4/app/h;

    .line 1227
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    iget-object v0, v0, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    .line 1228
    :goto_2
    iput-object v0, p1, Landroid/support/v4/app/h;->z:Landroid/support/v4/app/n;

    .line 1229
    iget-object v0, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    .line 7198
    iget-object v0, v0, Landroid/support/v4/app/l;->c:Landroid/content/Context;

    .line 1229
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/h;Landroid/content/Context;Z)V

    .line 1230
    iput-boolean v3, p1, Landroid/support/v4/app/h;->N:Z

    .line 1231
    iget-object v0, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    .line 8198
    iget-object v0, v0, Landroid/support/v4/app/l;->c:Landroid/content/Context;

    .line 1231
    invoke-virtual {p1, v0}, Landroid/support/v4/app/h;->a(Landroid/content/Context;)V

    .line 1232
    iget-boolean v0, p1, Landroid/support/v4/app/h;->N:Z

    if-nez v0, :cond_c

    .line 1233
    new-instance v0, Landroid/support/v4/app/an;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/an;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1227
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    .line 6206
    iget-object v0, v0, Landroid/support/v4/app/l;->f:Landroid/support/v4/app/n;

    goto :goto_2

    .line 1236
    :cond_c
    iget-object v0, p1, Landroid/support/v4/app/h;->D:Landroid/support/v4/app/h;

    if-eqz v0, :cond_d

    .line 1239
    iget-object v0, p1, Landroid/support/v4/app/h;->D:Landroid/support/v4/app/h;

    invoke-static {}, Landroid/support/v4/app/h;->o()V

    .line 1241
    :cond_d
    iget-object v0, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    .line 9198
    iget-object v0, v0, Landroid/support/v4/app/l;->c:Landroid/content/Context;

    .line 1241
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/n;->b(Landroid/support/v4/app/h;Landroid/content/Context;Z)V

    .line 1243
    iget-boolean v0, p1, Landroid/support/v4/app/h;->K:Z

    if-nez v0, :cond_19

    .line 1244
    iget-object v0, p1, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    .line 10175
    iget-object v1, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    if-eqz v1, :cond_e

    .line 10176
    iget-object v1, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    .line 10887
    iput-boolean v3, v1, Landroid/support/v4/app/n;->s:Z

    .line 10178
    :cond_e
    iput v5, p1, Landroid/support/v4/app/h;->k:I

    .line 10179
    iput-boolean v3, p1, Landroid/support/v4/app/h;->N:Z

    .line 10180
    invoke-virtual {p1, v0}, Landroid/support/v4/app/h;->a(Landroid/os/Bundle;)V

    .line 10181
    iget-boolean v0, p1, Landroid/support/v4/app/h;->N:Z

    if-nez v0, :cond_f

    .line 10182
    new-instance v0, Landroid/support/v4/app/an;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/an;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1245
    :cond_f
    iget-object v0, p1, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/h;Landroid/os/Bundle;Z)V

    .line 1250
    :goto_3
    iput-boolean v3, p1, Landroid/support/v4/app/h;->K:Z

    .line 1251
    iget-boolean v0, p1, Landroid/support/v4/app/h;->v:Z

    if-eqz v0, :cond_11

    .line 1255
    iget-object v0, p1, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/h;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v7, v1}, Landroid/support/v4/app/h;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    .line 1257
    iget-object v0, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 1258
    iget-object v0, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/h;->Q:Landroid/view/View;

    .line 1259
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1a

    .line 1260
    iget-object v0, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/x;->z(Landroid/view/View;)V

    .line 1264
    :goto_4
    iget-boolean v0, p1, Landroid/support/v4/app/h;->H:Z

    if-eqz v0, :cond_10

    iget-object v0, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1265
    :cond_10
    iget-object v0, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/h;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1266
    iget-object v0, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    invoke-direct {p0, p1, v0, v1, v3}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/h;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 1272
    :cond_11
    :goto_5
    :pswitch_1
    if-le p2, v5, :cond_23

    .line 1273
    sget-boolean v0, Landroid/support/v4/app/n;->a:Z

    if-eqz v0, :cond_12

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "moveto ACTIVITY_CREATED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :cond_12
    iget-boolean v0, p1, Landroid/support/v4/app/h;->v:Z

    if-nez v0, :cond_17

    .line 1276
    iget v0, p1, Landroid/support/v4/app/h;->F:I

    if-eqz v0, :cond_4f

    .line 1277
    iget v0, p1, Landroid/support/v4/app/h;->F:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 1278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Cannot create fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for a container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/n;->a(Ljava/lang/RuntimeException;)V

    .line 1283
    :cond_13
    iget-object v0, p0, Landroid/support/v4/app/n;->o:Landroid/support/v4/app/j;

    iget v1, p1, Landroid/support/v4/app/h;->F:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1284
    if-nez v0, :cond_14

    iget-boolean v1, p1, Landroid/support/v4/app/h;->x:Z

    if-nez v1, :cond_14

    .line 1287
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/h;->h()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Landroid/support/v4/app/h;->F:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1291
    :goto_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "No view found for id 0x"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p1, Landroid/support/v4/app/h;->F:I

    .line 1293
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ") for fragment "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1291
    invoke-direct {p0, v2}, Landroid/support/v4/app/n;->a(Ljava/lang/RuntimeException;)V

    .line 1298
    :cond_14
    :goto_7
    iput-object v0, p1, Landroid/support/v4/app/h;->O:Landroid/view/ViewGroup;

    .line 1299
    iget-object v1, p1, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/h;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/h;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    .line 1301
    iget-object v1, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    if-eqz v1, :cond_1e

    .line 1302
    iget-object v1, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    iput-object v1, p1, Landroid/support/v4/app/h;->Q:Landroid/view/View;

    .line 1303
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1c

    .line 1304
    iget-object v1, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/x;->z(Landroid/view/View;)V

    .line 1308
    :goto_8
    if-eqz v0, :cond_15

    .line 1309
    iget-object v1, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1311
    :cond_15
    iget-boolean v0, p1, Landroid/support/v4/app/h;->H:Z

    if-eqz v0, :cond_16

    .line 1312
    iget-object v0, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1314
    :cond_16
    iget-object v0, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/h;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1315
    iget-object v0, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    invoke-direct {p0, p1, v0, v1, v3}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/h;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 1319
    iget-object v0, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p1, Landroid/support/v4/app/h;->O:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1d

    move v0, v5

    :goto_9
    iput-boolean v0, p1, Landroid/support/v4/app/h;->X:Z

    .line 1326
    :cond_17
    :goto_a
    iget-object v0, p1, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    .line 11196
    iget-object v1, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    if-eqz v1, :cond_18

    .line 11197
    iget-object v1, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    .line 11887
    iput-boolean v3, v1, Landroid/support/v4/app/n;->s:Z

    .line 11199
    :cond_18
    const/4 v1, 0x2

    iput v1, p1, Landroid/support/v4/app/h;->k:I

    .line 11200
    iput-boolean v3, p1, Landroid/support/v4/app/h;->N:Z

    .line 11201
    invoke-virtual {p1, v0}, Landroid/support/v4/app/h;->c(Landroid/os/Bundle;)V

    .line 11202
    iget-boolean v0, p1, Landroid/support/v4/app/h;->N:Z

    if-nez v0, :cond_1f

    .line 11203
    new-instance v0, Landroid/support/v4/app/an;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/an;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1247
    :cond_19
    iget-object v0, p1, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/h;->f(Landroid/os/Bundle;)V

    .line 1248
    iput v5, p1, Landroid/support/v4/app/h;->k:I

    goto/16 :goto_3

    .line 1262
    :cond_1a
    iget-object v0, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/app/w;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    goto/16 :goto_4

    .line 1268
    :cond_1b
    iput-object v7, p1, Landroid/support/v4/app/h;->Q:Landroid/view/View;

    goto/16 :goto_5

    .line 1289
    :catch_0
    move-exception v1

    const-string/jumbo v1, "unknown"

    goto/16 :goto_6

    .line 1306
    :cond_1c
    iget-object v1, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/app/w;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    goto/16 :goto_8

    :cond_1d
    move v0, v3

    .line 1319
    goto :goto_9

    .line 1322
    :cond_1e
    iput-object v7, p1, Landroid/support/v4/app/h;->Q:Landroid/view/View;

    goto :goto_a

    .line 11206
    :cond_1f
    iget-object v0, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    if-eqz v0, :cond_20

    .line 11207
    iget-object v0, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->m()V

    .line 1327
    :cond_20
    iget-object v0, p1, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/n;->b(Landroid/support/v4/app/h;Landroid/os/Bundle;Z)V

    .line 1328
    iget-object v0, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    if-eqz v0, :cond_22

    .line 1329
    iget-object v0, p1, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    .line 12474
    iget-object v0, p1, Landroid/support/v4/app/h;->m:Landroid/util/SparseArray;

    if-eqz v0, :cond_21

    .line 12475
    iget-object v0, p1, Landroid/support/v4/app/h;->Q:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/h;->m:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 12476
    iput-object v7, p1, Landroid/support/v4/app/h;->m:Landroid/util/SparseArray;

    .line 12478
    :cond_21
    iput-boolean v3, p1, Landroid/support/v4/app/h;->N:Z

    .line 13379
    iput-boolean v5, p1, Landroid/support/v4/app/h;->N:Z

    .line 12480
    iget-boolean v0, p1, Landroid/support/v4/app/h;->N:Z

    if-nez v0, :cond_22

    .line 12481
    new-instance v0, Landroid/support/v4/app/an;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/an;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1331
    :cond_22
    iput-object v7, p1, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    .line 1334
    :cond_23
    :pswitch_2
    const/4 v0, 0x2

    if-le p2, v0, :cond_24

    .line 1335
    iput v6, p1, Landroid/support/v4/app/h;->k:I

    .line 1338
    :cond_24
    :pswitch_3
    if-le p2, v6, :cond_2a

    .line 1339
    sget-boolean v0, Landroid/support/v4/app/n;->a:Z

    if-eqz v0, :cond_25

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "moveto STARTED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14212
    :cond_25
    iget-object v0, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    if-eqz v0, :cond_26

    .line 14213
    iget-object v0, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    .line 14887
    iput-boolean v3, v0, Landroid/support/v4/app/n;->s:Z

    .line 14214
    iget-object v0, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->g()Z

    .line 14216
    :cond_26
    iput v9, p1, Landroid/support/v4/app/h;->k:I

    .line 14217
    iput-boolean v3, p1, Landroid/support/v4/app/h;->N:Z

    .line 14218
    invoke-virtual {p1}, Landroid/support/v4/app/h;->F_()V

    .line 14219
    iget-boolean v0, p1, Landroid/support/v4/app/h;->N:Z

    if-nez v0, :cond_27

    .line 14220
    new-instance v0, Landroid/support/v4/app/an;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/an;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14223
    :cond_27
    iget-object v0, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    if-eqz v0, :cond_28

    .line 14224
    iget-object v0, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->n()V

    .line 14226
    :cond_28
    iget-object v0, p1, Landroid/support/v4/app/h;->T:Landroid/support/v4/app/u;

    if-eqz v0, :cond_29

    .line 14227
    iget-object v0, p1, Landroid/support/v4/app/h;->T:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->f()V

    .line 1341
    :cond_29
    invoke-direct {p0, p1, v3}, Landroid/support/v4/app/n;->b(Landroid/support/v4/app/h;Z)V

    .line 1344
    :cond_2a
    :pswitch_4
    if-le p2, v9, :cond_7

    .line 1345
    sget-boolean v0, Landroid/support/v4/app/n;->a:Z

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "moveto RESUMED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15232
    :cond_2b
    iget-object v0, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    if-eqz v0, :cond_2c

    .line 15233
    iget-object v0, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    .line 15887
    iput-boolean v3, v0, Landroid/support/v4/app/n;->s:Z

    .line 15234
    iget-object v0, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->g()Z

    .line 15236
    :cond_2c
    const/4 v0, 0x5

    iput v0, p1, Landroid/support/v4/app/h;->k:I

    .line 15237
    iput-boolean v3, p1, Landroid/support/v4/app/h;->N:Z

    .line 15238
    invoke-virtual {p1}, Landroid/support/v4/app/h;->q()V

    .line 15239
    iget-boolean v0, p1, Landroid/support/v4/app/h;->N:Z

    if-nez v0, :cond_2d

    .line 15240
    new-instance v0, Landroid/support/v4/app/an;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/an;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15243
    :cond_2d
    iget-object v0, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    if-eqz v0, :cond_2e

    .line 15244
    iget-object v0, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->o()V

    .line 15245
    iget-object v0, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->g()Z

    .line 1347
    :cond_2e
    invoke-direct {p0, p1, v3}, Landroid/support/v4/app/n;->c(Landroid/support/v4/app/h;Z)V

    .line 1348
    iput-object v7, p1, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    .line 1349
    iput-object v7, p1, Landroid/support/v4/app/h;->m:Landroid/util/SparseArray;

    goto/16 :goto_1

    .line 1352
    :cond_2f
    iget v0, p1, Landroid/support/v4/app/h;->k:I

    if-le v0, p2, :cond_7

    .line 1353
    iget v0, p1, Landroid/support/v4/app/h;->k:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 1418
    :cond_30
    :goto_b
    :pswitch_5
    if-gtz p2, :cond_7

    .line 1419
    iget-boolean v0, p0, Landroid/support/v4/app/n;->t:Z

    if-eqz v0, :cond_31

    .line 1420
    invoke-virtual {p1}, Landroid/support/v4/app/h;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 1427
    invoke-virtual {p1}, Landroid/support/v4/app/h;->E()Landroid/view/View;

    move-result-object v0

    .line 1428
    invoke-virtual {p1, v7}, Landroid/support/v4/app/h;->a(Landroid/view/View;)V

    .line 1429
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1432
    :cond_31
    invoke-virtual {p1}, Landroid/support/v4/app/h;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 1437
    invoke-virtual {p1, p2}, Landroid/support/v4/app/h;->c(I)V

    move p2, v5

    .line 1438
    goto/16 :goto_1

    .line 1355
    :pswitch_6
    const/4 v0, 0x5

    if-ge p2, v0, :cond_35

    .line 1356
    sget-boolean v0, Landroid/support/v4/app/n;->a:Z

    if-eqz v0, :cond_32

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "movefrom RESUMED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16366
    :cond_32
    iget-object v0, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    if-eqz v0, :cond_33

    .line 16367
    iget-object v0, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->p()V

    .line 16369
    :cond_33
    iput v9, p1, Landroid/support/v4/app/h;->k:I

    .line 16370
    iput-boolean v3, p1, Landroid/support/v4/app/h;->N:Z

    .line 16371
    invoke-virtual {p1}, Landroid/support/v4/app/h;->r()V

    .line 16372
    iget-boolean v0, p1, Landroid/support/v4/app/h;->N:Z

    if-nez v0, :cond_34

    .line 16373
    new-instance v0, Landroid/support/v4/app/an;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/an;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1358
    :cond_34
    invoke-direct {p0, p1, v3}, Landroid/support/v4/app/n;->d(Landroid/support/v4/app/h;Z)V

    .line 1361
    :cond_35
    :pswitch_7
    if-ge p2, v9, :cond_39

    .line 1362
    sget-boolean v0, Landroid/support/v4/app/n;->a:Z

    if-eqz v0, :cond_36

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "movefrom STARTED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16379
    :cond_36
    iget-object v0, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    if-eqz v0, :cond_37

    .line 16380
    iget-object v0, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->q()V

    .line 16382
    :cond_37
    iput v6, p1, Landroid/support/v4/app/h;->k:I

    .line 16383
    iput-boolean v3, p1, Landroid/support/v4/app/h;->N:Z

    .line 16384
    invoke-virtual {p1}, Landroid/support/v4/app/h;->d()V

    .line 16385
    iget-boolean v0, p1, Landroid/support/v4/app/h;->N:Z

    if-nez v0, :cond_38

    .line 16386
    new-instance v0, Landroid/support/v4/app/an;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/an;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1364
    :cond_38
    invoke-direct {p0, p1, v3}, Landroid/support/v4/app/n;->e(Landroid/support/v4/app/h;Z)V

    .line 1367
    :cond_39
    :pswitch_8
    if-ge p2, v6, :cond_3b

    .line 1368
    sget-boolean v0, Landroid/support/v4/app/n;->a:Z

    if-eqz v0, :cond_3a

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "movefrom STOPPED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :cond_3a
    invoke-virtual {p1}, Landroid/support/v4/app/h;->x()V

    .line 1372
    :cond_3b
    :pswitch_9
    const/4 v0, 0x2

    if-ge p2, v0, :cond_30

    .line 1373
    sget-boolean v0, Landroid/support/v4/app/n;->a:Z

    if-eqz v0, :cond_3c

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "movefrom ACTIVITY_CREATED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :cond_3c
    iget-object v0, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    if-eqz v0, :cond_3d

    .line 1377
    iget-object v0, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->b()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p1, Landroid/support/v4/app/h;->m:Landroid/util/SparseArray;

    if-nez v0, :cond_3d

    .line 1378
    invoke-direct {p0, p1}, Landroid/support/v4/app/n;->j(Landroid/support/v4/app/h;)V

    .line 16413
    :cond_3d
    iget-object v0, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    if-eqz v0, :cond_3e

    .line 16414
    iget-object v0, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    .line 16942
    iput-boolean v5, v0, Landroid/support/v4/app/n;->d:Z

    .line 16943
    invoke-virtual {v0, v5, v3}, Landroid/support/v4/app/n;->a(IZ)V

    .line 16944
    iput-boolean v3, v0, Landroid/support/v4/app/n;->d:Z

    .line 16416
    :cond_3e
    iput v5, p1, Landroid/support/v4/app/h;->k:I

    .line 16417
    iput-boolean v3, p1, Landroid/support/v4/app/h;->N:Z

    .line 16418
    invoke-virtual {p1}, Landroid/support/v4/app/h;->e()V

    .line 16419
    iget-boolean v0, p1, Landroid/support/v4/app/h;->N:Z

    if-nez v0, :cond_3f

    .line 16420
    new-instance v0, Landroid/support/v4/app/an;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/an;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16423
    :cond_3f
    iget-object v0, p1, Landroid/support/v4/app/h;->T:Landroid/support/v4/app/u;

    if-eqz v0, :cond_40

    .line 16424
    iget-object v0, p1, Landroid/support/v4/app/h;->T:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->e()V

    .line 1382
    :cond_40
    invoke-direct {p0, p1, v3}, Landroid/support/v4/app/n;->f(Landroid/support/v4/app/h;Z)V

    .line 1383
    iget-object v0, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    if-eqz v0, :cond_42

    iget-object v0, p1, Landroid/support/v4/app/h;->O:Landroid/view/ViewGroup;

    if-eqz v0, :cond_42

    .line 1385
    iget v0, p0, Landroid/support/v4/app/n;->m:I

    if-lez v0, :cond_4e

    iget-boolean v0, p0, Landroid/support/v4/app/n;->t:Z

    if-nez v0, :cond_4e

    iget-object v0, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    .line 1386
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4e

    iget v0, p1, Landroid/support/v4/app/h;->Z:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4e

    .line 1388
    invoke-direct {p0, p1, p3, v3, p4}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/h;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1391
    :goto_c
    const/4 v1, 0x0

    iput v1, p1, Landroid/support/v4/app/h;->Z:F

    .line 1392
    if-eqz v0, :cond_41

    .line 1394
    iget-object v1, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/h;->a(Landroid/view/View;)V

    .line 1395
    invoke-virtual {p1, p2}, Landroid/support/v4/app/h;->c(I)V

    .line 1396
    iget-object v1, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    .line 1397
    new-instance v2, Landroid/support/v4/app/n$2;

    invoke-direct {v2, p0, v1, v0, p1}, Landroid/support/v4/app/n$2;-><init>(Landroid/support/v4/app/n;Landroid/view/View;Landroid/view/animation/Animation;Landroid/support/v4/app/h;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1409
    iget-object v1, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1411
    :cond_41
    iget-object v0, p1, Landroid/support/v4/app/h;->O:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1413
    :cond_42
    iput-object v7, p1, Landroid/support/v4/app/h;->O:Landroid/view/ViewGroup;

    .line 1414
    iput-object v7, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    .line 1415
    iput-object v7, p1, Landroid/support/v4/app/h;->Q:Landroid/view/View;

    goto/16 :goto_b

    .line 1440
    :cond_43
    sget-boolean v0, Landroid/support/v4/app/n;->a:Z

    if-eqz v0, :cond_44

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "movefrom CREATED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_44
    iget-boolean v0, p1, Landroid/support/v4/app/h;->K:Z

    if-nez v0, :cond_47

    .line 17429
    iget-object v0, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    if-eqz v0, :cond_45

    .line 17430
    iget-object v0, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->s()V

    .line 17432
    :cond_45
    iput v3, p1, Landroid/support/v4/app/h;->k:I

    .line 17433
    iput-boolean v3, p1, Landroid/support/v4/app/h;->N:Z

    .line 17434
    invoke-virtual {p1}, Landroid/support/v4/app/h;->s()V

    .line 17435
    iget-boolean v0, p1, Landroid/support/v4/app/h;->N:Z

    if-nez v0, :cond_46

    .line 17436
    new-instance v0, Landroid/support/v4/app/an;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/an;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17439
    :cond_46
    iput-object v7, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    .line 1443
    invoke-direct {p0, p1, v3}, Landroid/support/v4/app/n;->g(Landroid/support/v4/app/h;Z)V

    .line 17443
    :goto_d
    iput-boolean v3, p1, Landroid/support/v4/app/h;->N:Z

    .line 17444
    invoke-virtual {p1}, Landroid/support/v4/app/h;->D_()V

    .line 17445
    iget-boolean v0, p1, Landroid/support/v4/app/h;->N:Z

    if-nez v0, :cond_48

    .line 17446
    new-instance v0, Landroid/support/v4/app/an;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/an;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1445
    :cond_47
    iput v3, p1, Landroid/support/v4/app/h;->k:I

    goto :goto_d

    .line 17453
    :cond_48
    iget-object v0, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    if-eqz v0, :cond_4a

    .line 17454
    iget-boolean v0, p1, Landroid/support/v4/app/h;->K:Z

    if-nez v0, :cond_49

    .line 17455
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Child FragmentManager of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was not  destroyed and this fragment is not retaining instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17458
    :cond_49
    iget-object v0, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->s()V

    .line 17459
    iput-object v7, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    .line 1449
    :cond_4a
    invoke-direct {p0, p1, v3}, Landroid/support/v4/app/n;->h(Landroid/support/v4/app/h;Z)V

    .line 1450
    if-nez p5, :cond_7

    .line 1451
    iget-boolean v0, p1, Landroid/support/v4/app/h;->K:Z

    if-nez v0, :cond_4d

    .line 17657
    iget v0, p1, Landroid/support/v4/app/h;->n:I

    if-ltz v0, :cond_7

    .line 17661
    sget-boolean v0, Landroid/support/v4/app/n;->a:Z

    if-eqz v0, :cond_4b

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Freeing fragment index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17662
    :cond_4b
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/h;->n:I

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17663
    iget-object v0, p0, Landroid/support/v4/app/n;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_4c

    .line 17664
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/n;->g:Ljava/util/ArrayList;

    .line 17666
    :cond_4c
    iget-object v0, p0, Landroid/support/v4/app/n;->g:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/h;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17667
    iget-object v0, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    iget-object v1, p1, Landroid/support/v4/app/h;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)V

    .line 18526
    const/4 v0, -0x1

    iput v0, p1, Landroid/support/v4/app/h;->n:I

    .line 18527
    iput-object v7, p1, Landroid/support/v4/app/h;->o:Ljava/lang/String;

    .line 18528
    iput-boolean v3, p1, Landroid/support/v4/app/h;->t:Z

    .line 18529
    iput-boolean v3, p1, Landroid/support/v4/app/h;->u:Z

    .line 18530
    iput-boolean v3, p1, Landroid/support/v4/app/h;->v:Z

    .line 18531
    iput-boolean v3, p1, Landroid/support/v4/app/h;->w:Z

    .line 18532
    iput-boolean v3, p1, Landroid/support/v4/app/h;->x:Z

    .line 18533
    iput v3, p1, Landroid/support/v4/app/h;->y:I

    .line 18534
    iput-object v7, p1, Landroid/support/v4/app/h;->z:Landroid/support/v4/app/n;

    .line 18535
    iput-object v7, p1, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    .line 18536
    iput-object v7, p1, Landroid/support/v4/app/h;->A:Landroid/support/v4/app/l;

    .line 18537
    iput v3, p1, Landroid/support/v4/app/h;->E:I

    .line 18538
    iput v3, p1, Landroid/support/v4/app/h;->F:I

    .line 18539
    iput-object v7, p1, Landroid/support/v4/app/h;->G:Ljava/lang/String;

    .line 18540
    iput-boolean v3, p1, Landroid/support/v4/app/h;->H:Z

    .line 18541
    iput-boolean v3, p1, Landroid/support/v4/app/h;->I:Z

    .line 18542
    iput-boolean v3, p1, Landroid/support/v4/app/h;->K:Z

    .line 18543
    iput-object v7, p1, Landroid/support/v4/app/h;->T:Landroid/support/v4/app/u;

    .line 18544
    iput-boolean v3, p1, Landroid/support/v4/app/h;->U:Z

    .line 18545
    iput-boolean v3, p1, Landroid/support/v4/app/h;->V:Z

    goto/16 :goto_1

    .line 1454
    :cond_4d
    iput-object v7, p1, Landroid/support/v4/app/h;->A:Landroid/support/v4/app/l;

    .line 1455
    iput-object v7, p1, Landroid/support/v4/app/h;->D:Landroid/support/v4/app/h;

    .line 1456
    iput-object v7, p1, Landroid/support/v4/app/h;->z:Landroid/support/v4/app/n;

    goto/16 :goto_1

    :cond_4e
    move-object v0, v7

    goto/16 :goto_c

    :cond_4f
    move-object v0, v7

    goto/16 :goto_7

    .line 1203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1353
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Landroid/support/v4/app/h;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1672
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1673
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    .line 1675
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/n;->a:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "add: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/app/n;->c(Landroid/support/v4/app/h;)V

    .line 1677
    iget-boolean v0, p1, Landroid/support/v4/app/h;->I:Z

    if-nez v0, :cond_5

    .line 1678
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1679
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1681
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1682
    iput-boolean v4, p1, Landroid/support/v4/app/h;->t:Z

    .line 1683
    iput-boolean v3, p1, Landroid/support/v4/app/h;->u:Z

    .line 1684
    iget-object v0, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    if-nez v0, :cond_3

    .line 1685
    iput-boolean v3, p1, Landroid/support/v4/app/h;->Y:Z

    .line 1687
    :cond_3
    iget-boolean v0, p1, Landroid/support/v4/app/h;->L:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Landroid/support/v4/app/h;->M:Z

    if-eqz v0, :cond_4

    .line 1688
    iput-boolean v4, p0, Landroid/support/v4/app/n;->r:Z

    .line 1690
    :cond_4
    if-eqz p2, :cond_5

    .line 1691
    invoke-direct {p0, p1}, Landroid/support/v4/app/n;->i(Landroid/support/v4/app/h;)V

    .line 1694
    :cond_5
    return-void
.end method

.method public final a(Landroid/support/v4/app/l;Landroid/support/v4/app/j;Landroid/support/v4/app/h;)V
    .locals 2

    .prologue
    .line 2880
    iget-object v0, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2881
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    .line 2882
    iput-object p2, p0, Landroid/support/v4/app/n;->o:Landroid/support/v4/app/j;

    .line 2883
    iput-object p3, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    .line 2884
    return-void
.end method

.method public final a(Landroid/support/v4/app/n$c;Z)V
    .locals 2

    .prologue
    .line 1859
    if-nez p2, :cond_0

    .line 1860
    invoke-direct {p0}, Landroid/support/v4/app/n;->u()V

    .line 1862
    :cond_0
    monitor-enter p0

    .line 1863
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/app/n;->t:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    if-nez v0, :cond_2

    .line 1864
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1871
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1866
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/n;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1867
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/n;->c:Ljava/util/ArrayList;

    .line 1869
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1870
    invoke-direct {p0}, Landroid/support/v4/app/n;->v()V

    .line 1871
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 928
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 929
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 930
    if-lez v4, :cond_1

    .line 931
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Active Fragments in "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 932
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 933
    const-string/jumbo v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 934
    :goto_0
    if-ge v2, v4, :cond_1

    .line 935
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 936
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 937
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 938
    if-eqz v0, :cond_0

    .line 939
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/h;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 934
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 945
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 946
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 947
    if-lez v4, :cond_2

    .line 948
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Added Fragments:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 949
    :goto_1
    if-ge v2, v4, :cond_2

    .line 950
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 951
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 952
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/h;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 949
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 957
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/n;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 958
    iget-object v0, p0, Landroid/support/v4/app/n;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 959
    if-lez v4, :cond_3

    .line 960
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Fragments Created Menus:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 961
    :goto_2
    if-ge v2, v4, :cond_3

    .line 962
    iget-object v0, p0, Landroid/support/v4/app/n;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 963
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 964
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/h;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 961
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 969
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 970
    iget-object v0, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 971
    if-lez v4, :cond_4

    .line 972
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Back Stack:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 973
    :goto_3
    if-ge v2, v4, :cond_4

    .line 974
    iget-object v0, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    .line 975
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 976
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/c;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 977
    invoke-virtual {v0, v3, p3}, Landroid/support/v4/app/c;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 973
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 982
    :cond_4
    monitor-enter p0

    .line 983
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/n;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 984
    iget-object v0, p0, Landroid/support/v4/app/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 985
    if-lez v3, :cond_5

    .line 986
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Back Stack Indices:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 987
    :goto_4
    if-ge v2, v3, :cond_5

    .line 988
    iget-object v0, p0, Landroid/support/v4/app/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    .line 989
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 990
    const-string/jumbo v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 987
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 995
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/n;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 996
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAvailBackStackIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 997
    iget-object v0, p0, Landroid/support/v4/app/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 999
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1001
    iget-object v0, p0, Landroid/support/v4/app/n;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 1002
    iget-object v0, p0, Landroid/support/v4/app/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1003
    if-lez v2, :cond_7

    .line 1004
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1005
    :goto_5
    if-ge v1, v2, :cond_7

    .line 1006
    iget-object v0, p0, Landroid/support/v4/app/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/n$c;

    .line 1007
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1008
    const-string/jumbo v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1005
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 999
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1013
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "FragmentManager misc state:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1015
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/n;->o:Landroid/support/v4/app/j;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1016
    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    if-eqz v0, :cond_8

    .line 1017
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mParent="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1019
    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mCurState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/n;->m:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1020
    const-string/jumbo v0, " mStateSaved="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/n;->s:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1021
    const-string/jumbo v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/n;->t:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1022
    iget-boolean v0, p0, Landroid/support/v4/app/n;->r:Z

    if-eqz v0, :cond_9

    .line 1023
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1024
    iget-boolean v0, p0, Landroid/support/v4/app/n;->r:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1026
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/n;->u:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1027
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mNoTransactionsBecause="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Landroid/support/v4/app/n;->u:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1030
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/n;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v4/app/n;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 1031
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mAvailIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1032
    iget-object v0, p0, Landroid/support/v4/app/n;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    :cond_b
    return-void
.end method

.method final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/c;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2074
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2111
    :cond_0
    :goto_0
    return-void

    .line 2078
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 2079
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Internal error with the back stack records"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2083
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/n;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2085
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 2087
    :goto_1
    if-ge v2, v3, :cond_6

    .line 2088
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    iget-boolean v0, v0, Landroid/support/v4/app/c;->u:Z

    .line 2089
    if-nez v0, :cond_7

    .line 2091
    if-eq v1, v2, :cond_4

    .line 2092
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/support/v4/app/n;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2095
    :cond_4
    add-int/lit8 v1, v2, 0x1

    .line 2096
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2097
    :goto_2
    if-ge v1, v3, :cond_5

    .line 2098
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2099
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    iget-boolean v0, v0, Landroid/support/v4/app/c;->u:Z

    if-nez v0, :cond_5

    .line 2100
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    .line 2103
    invoke-direct {p0, p1, p2, v2, v0}, Landroid/support/v4/app/n;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2105
    add-int/lit8 v1, v0, -0x1

    move v4, v1

    move v1, v0

    move v0, v4

    .line 2087
    :goto_3
    add-int/lit8 v2, v0, 0x1

    goto :goto_1

    .line 2108
    :cond_6
    if-eq v1, v3, :cond_0

    .line 2109
    invoke-direct {p0, p1, p2, v1, v3}, Landroid/support/v4/app/n;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_3
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 2959
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2968
    :cond_0
    return-void

    .line 2962
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 2963
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 2964
    if-eqz v0, :cond_2

    .line 34251
    iget-object v2, v0, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    if-eqz v2, :cond_2

    .line 34252
    iget-object v0, v0, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->a(Z)V

    .line 2962
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public final a(Landroid/view/Menu;)Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 3037
    .line 3038
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v1, v2

    move v3, v2

    .line 3039
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 3040
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 3041
    if-eqz v0, :cond_1

    .line 34302
    iget-boolean v4, v0, Landroid/support/v4/app/h;->H:Z

    if-nez v4, :cond_5

    .line 34303
    iget-boolean v4, v0, Landroid/support/v4/app/h;->L:Z

    if-eqz v4, :cond_4

    iget-boolean v4, v0, Landroid/support/v4/app/h;->M:Z

    if-eqz v4, :cond_4

    .line 34305
    invoke-virtual {v0, p1}, Landroid/support/v4/app/h;->a(Landroid/view/Menu;)V

    move v4, v5

    .line 34307
    :goto_1
    iget-object v6, v0, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    if-eqz v6, :cond_0

    .line 34308
    iget-object v0, v0, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->a(Landroid/view/Menu;)Z

    move-result v0

    or-int/2addr v4, v0

    .line 3042
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    move v3, v5

    .line 3039
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v3, v2

    .line 3048
    :cond_3
    return v3

    :cond_4
    move v4, v2

    goto :goto_1

    :cond_5
    move v4, v2

    goto :goto_2
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 3005
    .line 3006
    const/4 v1, 0x0

    .line 3007
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v4, v5

    move v3, v5

    .line 3008
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    .line 3009
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 3010
    if-eqz v0, :cond_7

    .line 34288
    iget-boolean v6, v0, Landroid/support/v4/app/h;->H:Z

    if-nez v6, :cond_9

    .line 34289
    iget-boolean v6, v0, Landroid/support/v4/app/h;->L:Z

    if-eqz v6, :cond_8

    iget-boolean v6, v0, Landroid/support/v4/app/h;->M:Z

    if-eqz v6, :cond_8

    .line 34291
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/h;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    move v6, v2

    .line 34293
    :goto_1
    iget-object v7, v0, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    if-eqz v7, :cond_0

    .line 34294
    iget-object v7, v0, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    invoke-virtual {v7, p1, p2}, Landroid/support/v4/app/n;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v7

    or-int/2addr v6, v7

    .line 3011
    :cond_0
    :goto_2
    if-eqz v6, :cond_7

    .line 3013
    if-nez v1, :cond_1

    .line 3014
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3016
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    .line 3008
    :goto_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v5

    .line 3022
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/n;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 3023
    :goto_4
    iget-object v0, p0, Landroid/support/v4/app/n;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_6

    .line 3024
    iget-object v0, p0, Landroid/support/v4/app/n;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 3025
    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3026
    :cond_4
    invoke-static {}, Landroid/support/v4/app/h;->t()V

    .line 3023
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 3031
    :cond_6
    iput-object v1, p0, Landroid/support/v4/app/n;->i:Ljava/util/ArrayList;

    .line 3033
    return v3

    :cond_7
    move v0, v3

    goto :goto_3

    :cond_8
    move v6, v5

    goto :goto_1

    :cond_9
    move v6, v5

    goto :goto_2
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3052
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    .line 3053
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3054
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 3055
    if-eqz v0, :cond_3

    .line 34315
    iget-boolean v4, v0, Landroid/support/v4/app/h;->H:Z

    if-nez v4, :cond_2

    .line 34316
    iget-boolean v4, v0, Landroid/support/v4/app/h;->L:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v0, Landroid/support/v4/app/h;->M:Z

    if-eqz v4, :cond_1

    .line 34317
    invoke-virtual {v0, p1}, Landroid/support/v4/app/h;->a(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 3056
    :goto_1
    if-eqz v0, :cond_3

    move v2, v3

    .line 3062
    :cond_0
    return v2

    .line 34321
    :cond_1
    iget-object v4, v0, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    if-eqz v4, :cond_2

    .line 34322
    iget-object v0, v0, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    .line 34323
    goto :goto_1

    :cond_2
    move v0, v2

    .line 34327
    goto :goto_1

    .line 3053
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method final a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/c;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2489
    iget-object v0, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move v0, v2

    .line 2540
    :goto_0
    return v0

    .line 2492
    :cond_0
    if-nez p3, :cond_3

    if-gez p4, :cond_3

    and-int/lit8 v0, p5, 0x1

    if-nez v0, :cond_3

    .line 2493
    iget-object v0, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2494
    if-gez v0, :cond_1

    move v0, v2

    .line 2495
    goto :goto_0

    .line 2497
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2498
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move v0, v3

    .line 2540
    goto :goto_0

    .line 2500
    :cond_3
    const/4 v0, -0x1

    .line 2501
    if-nez p3, :cond_4

    if-ltz p4, :cond_c

    .line 2504
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 2505
    :goto_1
    if-ltz v1, :cond_7

    .line 2506
    iget-object v0, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    .line 2507
    if-eqz p3, :cond_5

    .line 29918
    iget-object v4, v0, Landroid/support/v4/app/c;->l:Ljava/lang/String;

    .line 2507
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2510
    :cond_5
    if-ltz p4, :cond_6

    iget v0, v0, Landroid/support/v4/app/c;->n:I

    if-eq p4, v0, :cond_7

    .line 2513
    :cond_6
    add-int/lit8 v1, v1, -0x1

    .line 2514
    goto :goto_1

    .line 2515
    :cond_7
    if-gez v1, :cond_8

    move v0, v2

    .line 2516
    goto :goto_0

    .line 2518
    :cond_8
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_b

    .line 2519
    add-int/lit8 v1, v1, -0x1

    .line 2521
    :goto_2
    if-ltz v1, :cond_b

    .line 2522
    iget-object v0, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    .line 2523
    if-eqz p3, :cond_9

    .line 30918
    iget-object v4, v0, Landroid/support/v4/app/c;->l:Ljava/lang/String;

    .line 2523
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    if-ltz p4, :cond_b

    iget v0, v0, Landroid/support/v4/app/c;->n:I

    if-ne p4, v0, :cond_b

    .line 2525
    :cond_a
    add-int/lit8 v1, v1, -0x1

    .line 2526
    goto :goto_2

    :cond_b
    move v0, v1

    .line 2532
    :cond_c
    iget-object v1, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_d

    move v0, v2

    .line 2533
    goto/16 :goto_0

    .line 2535
    :cond_d
    iget-object v1, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-le v1, v0, :cond_2

    .line 2536
    iget-object v2, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2537
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2535
    add-int/lit8 v1, v1, -0x1

    goto :goto_3
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 792
    if-gez p1, :cond_0

    .line 793
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Bad id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 795
    :cond_0
    new-instance v0, Landroid/support/v4/app/n$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Landroid/support/v4/app/n$d;-><init>(Landroid/support/v4/app/n;Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/n$c;Z)V

    .line 796
    return-void
.end method

.method final b(Landroid/support/v4/app/h;)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1517
    if-nez p1, :cond_1

    .line 1565
    :cond_0
    :goto_0
    return-void

    .line 1520
    :cond_1
    iget v2, p0, Landroid/support/v4/app/n;->m:I

    .line 1521
    iget-boolean v0, p1, Landroid/support/v4/app/h;->u:Z

    if-eqz v0, :cond_2

    .line 1522
    invoke-virtual {p1}, Landroid/support/v4/app/h;->f()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1523
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1528
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/support/v4/app/h;->A()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v4/app/h;->B()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/h;IIIZ)V

    .line 1530
    iget-object v0, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 19324
    iget-object v2, p1, Landroid/support/v4/app/h;->O:Landroid/view/ViewGroup;

    .line 19325
    iget-object v0, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    .line 19327
    if-eqz v2, :cond_3

    if-nez v0, :cond_c

    :cond_3
    move-object v0, v7

    .line 1533
    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 1534
    iget-object v0, v0, Landroid/support/v4/app/h;->P:Landroid/view/View;

    .line 1536
    iget-object v1, p1, Landroid/support/v4/app/h;->O:Landroid/view/ViewGroup;

    .line 1537
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1538
    iget-object v2, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1539
    if-ge v2, v0, :cond_5

    .line 1540
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1541
    iget-object v2, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1544
    :cond_5
    iget-boolean v0, p1, Landroid/support/v4/app/h;->X:Z

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/support/v4/app/h;->O:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    .line 1546
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_f

    .line 1547
    iget-object v0, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1551
    :cond_6
    :goto_3
    iput v8, p1, Landroid/support/v4/app/h;->Z:F

    .line 1552
    iput-boolean v5, p1, Landroid/support/v4/app/h;->X:Z

    .line 1554
    invoke-virtual {p1}, Landroid/support/v4/app/h;->A()I

    move-result v0

    .line 1555
    invoke-virtual {p1}, Landroid/support/v4/app/h;->B()I

    move-result v1

    .line 1554
    invoke-direct {p0, p1, v0, v6, v1}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/h;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1556
    if-eqz v0, :cond_7

    .line 1557
    iget-object v1, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/app/n;->a(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1558
    iget-object v1, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1562
    :cond_7
    iget-boolean v0, p1, Landroid/support/v4/app/h;->Y:Z

    if-eqz v0, :cond_0

    .line 19486
    iget-object v0, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 19487
    invoke-virtual {p1}, Landroid/support/v4/app/h;->A()I

    move-result v1

    iget-boolean v0, p1, Landroid/support/v4/app/h;->H:Z

    if-nez v0, :cond_10

    move v0, v6

    .line 19488
    :goto_4
    invoke-virtual {p1}, Landroid/support/v4/app/h;->B()I

    move-result v2

    .line 19487
    invoke-direct {p0, p1, v1, v0, v2}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/h;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 19489
    if-eqz v0, :cond_8

    .line 19490
    iget-object v1, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/app/n;->a(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 19491
    iget-object v1, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 19492
    iget-object v1, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/app/n;->a(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 19493
    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 19495
    :cond_8
    iget-boolean v0, p1, Landroid/support/v4/app/h;->H:Z

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroid/support/v4/app/h;->H()Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x8

    .line 19498
    :goto_5
    iget-object v1, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19499
    invoke-virtual {p1}, Landroid/support/v4/app/h;->H()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 19500
    invoke-virtual {p1, v5}, Landroid/support/v4/app/h;->d(Z)V

    .line 19503
    :cond_9
    iget-boolean v0, p1, Landroid/support/v4/app/h;->t:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p1, Landroid/support/v4/app/h;->L:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p1, Landroid/support/v4/app/h;->M:Z

    if-eqz v0, :cond_a

    .line 19504
    iput-boolean v6, p0, Landroid/support/v4/app/n;->r:Z

    .line 19506
    :cond_a
    iput-boolean v5, p1, Landroid/support/v4/app/h;->Y:Z

    .line 19507
    iget-boolean v0, p1, Landroid/support/v4/app/h;->H:Z

    invoke-static {}, Landroid/support/v4/app/h;->j()V

    goto/16 :goto_0

    .line 1525
    :cond_b
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto/16 :goto_1

    .line 19331
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 19332
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_6
    if-ltz v1, :cond_e

    .line 19333
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 19334
    iget-object v3, v0, Landroid/support/v4/app/h;->O:Landroid/view/ViewGroup;

    if-ne v3, v2, :cond_d

    iget-object v3, v0, Landroid/support/v4/app/h;->P:Landroid/view/View;

    if-nez v3, :cond_4

    .line 19332
    :cond_d
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_6

    :cond_e
    move-object v0, v7

    .line 19339
    goto/16 :goto_2

    .line 1548
    :cond_f
    iget v0, p1, Landroid/support/v4/app/h;->Z:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_6

    .line 1549
    iget-object v0, p1, Landroid/support/v4/app/h;->P:Landroid/view/View;

    iget v1, p1, Landroid/support/v4/app/h;->Z:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_3

    :cond_10
    move v0, v5

    .line 19487
    goto/16 :goto_4

    :cond_11
    move v0, v5

    .line 19495
    goto :goto_5
.end method

.method public final b(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 3080
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 3081
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 3082
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 3083
    if-eqz v0, :cond_0

    .line 34345
    iget-boolean v2, v0, Landroid/support/v4/app/h;->H:Z

    if-nez v2, :cond_0

    .line 34349
    iget-object v2, v0, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    if-eqz v2, :cond_0

    .line 34350
    iget-object v0, v0, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->b(Landroid/view/Menu;)V

    .line 3081
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3088
    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 781
    new-instance v0, Landroid/support/v4/app/n$d;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/support/v4/app/n$d;-><init>(Landroid/support/v4/app/n;Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/n$c;Z)V

    .line 782
    return-void
.end method

.method public final b(Z)V
    .locals 3

    .prologue
    .line 2971
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2980
    :cond_0
    return-void

    .line 2974
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 2975
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 2976
    if-eqz v0, :cond_2

    .line 34258
    iget-object v2, v0, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    if-eqz v2, :cond_2

    .line 34259
    iget-object v0, v0, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->b(Z)V

    .line 2974
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 775
    invoke-direct {p0}, Landroid/support/v4/app/n;->u()V

    .line 776
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/n;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3066
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    .line 3067
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3068
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 3069
    if-eqz v0, :cond_2

    .line 34331
    iget-boolean v4, v0, Landroid/support/v4/app/h;->H:Z

    if-nez v4, :cond_1

    .line 34335
    iget-object v4, v0, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    if-eqz v4, :cond_1

    .line 34336
    iget-object v0, v0, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->b(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    .line 3070
    :goto_1
    if-eqz v0, :cond_2

    move v2, v3

    .line 3076
    :cond_0
    return v2

    :cond_1
    move v0, v2

    .line 34341
    goto :goto_1

    .line 3067
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c(Landroid/support/v4/app/h;)V
    .locals 3

    .prologue
    .line 1638
    iget v0, p1, Landroid/support/v4/app/h;->n:I

    if-ltz v0, :cond_1

    .line 1654
    :cond_0
    :goto_0
    return-void

    .line 1642
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/n;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/n;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 1643
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1644
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    .line 1646
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/h;->a(ILandroid/support/v4/app/h;)V

    .line 1647
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1653
    :goto_1
    sget-boolean v0, Landroid/support/v4/app/n;->a:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Allocated fragment index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1650
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/n;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/n;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/h;->a(ILandroid/support/v4/app/h;)V

    .line 1651
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/h;->n:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 786
    invoke-direct {p0}, Landroid/support/v4/app/n;->u()V

    .line 787
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/n;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/String;)Landroid/support/v4/app/h;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1829
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 1830
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_3

    .line 1831
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 1832
    if-eqz v0, :cond_2

    .line 20143
    iget-object v3, v0, Landroid/support/v4/app/h;->o:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1832
    :goto_1
    if-eqz v0, :cond_2

    .line 1837
    :goto_2
    return-object v0

    .line 20146
    :cond_0
    iget-object v3, v0, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    if-eqz v3, :cond_1

    .line 20147
    iget-object v0, v0, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->d(Ljava/lang/String;)Landroid/support/v4/app/h;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 20149
    goto :goto_1

    .line 1830
    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 1837
    goto :goto_2
.end method

.method final d()V
    .locals 2

    .prologue
    .line 1627
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1635
    :cond_0
    return-void

    .line 1629
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1630
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 1631
    if-eqz v0, :cond_2

    .line 1632
    invoke-virtual {p0, v0}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/h;)V

    .line 1629
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final d(Landroid/support/v4/app/h;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1697
    sget-boolean v0, Landroid/support/v4/app/n;->a:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "remove: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " nesting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/support/v4/app/h;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/h;->f()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 1699
    :goto_0
    iget-boolean v3, p1, Landroid/support/v4/app/h;->I:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_4

    .line 1700
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1701
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1703
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/h;->L:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/h;->M:Z

    if-eqz v0, :cond_3

    .line 1704
    iput-boolean v1, p0, Landroid/support/v4/app/n;->r:Z

    .line 1706
    :cond_3
    iput-boolean v2, p1, Landroid/support/v4/app/h;->t:Z

    .line 1707
    iput-boolean v1, p1, Landroid/support/v4/app/h;->u:Z

    .line 1709
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 1698
    goto :goto_0
.end method

.method final e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1955
    iget-boolean v0, p0, Landroid/support/v4/app/n;->d:Z

    if-eqz v0, :cond_0

    .line 1956
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "FragmentManager is already executing transactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1959
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    .line 22202
    iget-object v1, v1, Landroid/support/v4/app/l;->d:Landroid/os/Handler;

    .line 1959
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1960
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called from main thread of fragment host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1967
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/n;->w:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1968
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/n;->w:Ljava/util/ArrayList;

    .line 1969
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/n;->x:Ljava/util/ArrayList;

    .line 1971
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/n;->d:Z

    .line 1973
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/n;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1975
    iput-boolean v2, p0, Landroid/support/v4/app/n;->d:Z

    .line 1976
    return-void

    .line 1975
    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Landroid/support/v4/app/n;->d:Z

    throw v0
.end method

.method final f()V
    .locals 1

    .prologue
    .line 1998
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/n;->d:Z

    .line 1999
    iget-object v0, p0, Landroid/support/v4/app/n;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2000
    iget-object v0, p0, Landroid/support/v4/app/n;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2001
    return-void
.end method

.method public final g(Landroid/support/v4/app/h;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1744
    sget-boolean v0, Landroid/support/v4/app/n;->a:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "detach: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/h;->I:Z

    if-nez v0, :cond_4

    .line 1746
    iput-boolean v3, p1, Landroid/support/v4/app/h;->I:Z

    .line 1747
    iget-boolean v0, p1, Landroid/support/v4/app/h;->t:Z

    if-eqz v0, :cond_4

    .line 1749
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1750
    sget-boolean v0, Landroid/support/v4/app/n;->a:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "remove from detach: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1753
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/h;->L:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/h;->M:Z

    if-eqz v0, :cond_3

    .line 1754
    iput-boolean v3, p0, Landroid/support/v4/app/n;->r:Z

    .line 1756
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/h;->t:Z

    .line 1759
    :cond_4
    return-void
.end method

.method public final g()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2007
    invoke-virtual {p0}, Landroid/support/v4/app/n;->e()V

    .line 2009
    const/4 v0, 0x0

    .line 2010
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/n;->w:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/n;->x:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroid/support/v4/app/n;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2011
    iput-boolean v1, p0, Landroid/support/v4/app/n;->d:Z

    .line 2013
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/n;->w:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/n;->x:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/app/n;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2015
    invoke-virtual {p0}, Landroid/support/v4/app/n;->f()V

    move v0, v1

    .line 2017
    goto :goto_0

    .line 2015
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/support/v4/app/n;->f()V

    throw v0

    .line 2020
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/n;->h()V

    .line 2022
    return v0
.end method

.method final h()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2455
    iget-boolean v0, p0, Landroid/support/v4/app/n;->v:Z

    if-eqz v0, :cond_2

    move v1, v2

    move v3, v2

    .line 2457
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2458
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 2459
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/support/v4/app/h;->T:Landroid/support/v4/app/u;

    if-eqz v4, :cond_0

    .line 2460
    iget-object v0, v0, Landroid/support/v4/app/h;->T:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->a()Z

    move-result v0

    or-int/2addr v3, v0

    .line 2457
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2463
    :cond_1
    if-nez v3, :cond_2

    .line 2464
    iput-boolean v2, p0, Landroid/support/v4/app/n;->v:Z

    .line 2465
    invoke-virtual {p0}, Landroid/support/v4/app/n;->d()V

    .line 2468
    :cond_2
    return-void
.end method

.method public final h(Landroid/support/v4/app/h;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1762
    sget-boolean v0, Landroid/support/v4/app/n;->a:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "attach: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/h;->I:Z

    if-eqz v0, :cond_4

    .line 1764
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/h;->I:Z

    .line 1765
    iget-boolean v0, p1, Landroid/support/v4/app/h;->t:Z

    if-nez v0, :cond_4

    .line 1766
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1767
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    .line 1769
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1770
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1772
    :cond_2
    sget-boolean v0, Landroid/support/v4/app/n;->a:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "add from attach: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1774
    iput-boolean v3, p1, Landroid/support/v4/app/h;->t:Z

    .line 1775
    iget-boolean v0, p1, Landroid/support/v4/app/h;->L:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Landroid/support/v4/app/h;->M:Z

    if-eqz v0, :cond_4

    .line 1776
    iput-boolean v3, p0, Landroid/support/v4/app/n;->r:Z

    .line 1780
    :cond_4
    return-void
.end method

.method final i()V
    .locals 2

    .prologue
    .line 2471
    iget-object v0, p0, Landroid/support/v4/app/n;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2472
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/n;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2473
    iget-object v1, p0, Landroid/support/v4/app/n;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2472
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2476
    :cond_0
    return-void
.end method

.method final j()Landroid/support/v4/app/o;
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2544
    .line 2546
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    move v3, v4

    move-object v1, v5

    move-object v2, v5

    .line 2547
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 2548
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 2549
    if-eqz v0, :cond_5

    .line 2550
    iget-boolean v6, v0, Landroid/support/v4/app/h;->J:Z

    if-eqz v6, :cond_1

    .line 2551
    if-nez v2, :cond_0

    .line 2552
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2554
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2555
    iput-boolean v7, v0, Landroid/support/v4/app/h;->K:Z

    .line 2556
    iget-object v6, v0, Landroid/support/v4/app/h;->q:Landroid/support/v4/app/h;

    if-eqz v6, :cond_2

    iget-object v6, v0, Landroid/support/v4/app/h;->q:Landroid/support/v4/app/h;

    iget v6, v6, Landroid/support/v4/app/h;->n:I

    :goto_1
    iput v6, v0, Landroid/support/v4/app/h;->r:I

    .line 2557
    sget-boolean v6, Landroid/support/v4/app/n;->a:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "retainNonConfig: keeping retained "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    :cond_1
    iget-object v6, v0, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    if-eqz v6, :cond_9

    .line 2561
    iget-object v0, v0, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->j()Landroid/support/v4/app/o;

    move-result-object v6

    .line 2562
    if-eqz v6, :cond_9

    .line 2563
    if-nez v1, :cond_3

    .line 2564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v4

    .line 2565
    :goto_2
    if-ge v1, v3, :cond_4

    .line 2566
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2565
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2556
    :cond_2
    const/4 v6, -0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 2569
    :cond_4
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    move v0, v7

    .line 2573
    :goto_3
    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    .line 2574
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v0, v2

    .line 2547
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v0

    goto :goto_0

    :cond_6
    move-object v1, v5

    move-object v2, v5

    .line 2579
    :cond_7
    if-nez v2, :cond_8

    if-nez v1, :cond_8

    .line 2582
    :goto_4
    return-object v5

    :cond_8
    new-instance v5, Landroid/support/v4/app/o;

    invoke-direct {v5, v2, v1}, Landroid/support/v4/app/o;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto :goto_4

    :cond_9
    move v0, v4

    goto :goto_3
.end method

.method final k()Landroid/os/Parcelable;
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 2638
    .line 31397
    iget-object v0, p0, Landroid/support/v4/app/n;->B:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 31398
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/n;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31399
    iget-object v0, p0, Landroid/support/v4/app/n;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/n$e;

    invoke-virtual {v0}, Landroid/support/v4/app/n$e;->c()V

    goto :goto_0

    .line 31409
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    move v6, v3

    :goto_1
    move v9, v3

    .line 31410
    :goto_2
    if-ge v9, v6, :cond_4

    .line 31411
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/h;

    .line 31412
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/support/v4/app/h;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 31414
    invoke-virtual {v1}, Landroid/support/v4/app/h;->F()I

    move-result v2

    .line 31415
    invoke-virtual {v1}, Landroid/support/v4/app/h;->E()Landroid/view/View;

    move-result-object v0

    .line 31416
    invoke-virtual {v1, v7}, Landroid/support/v4/app/h;->a(Landroid/view/View;)V

    .line 31417
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 31418
    if-eqz v0, :cond_1

    .line 31419
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_1
    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 31421
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/h;IIIZ)V

    .line 31410
    :cond_2
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_2

    .line 31409
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v6, v0

    goto :goto_1

    .line 2640
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/app/n;->g()Z

    .line 2642
    sget-boolean v0, Landroid/support/v4/app/n;->b:Z

    if-eqz v0, :cond_5

    .line 2652
    iput-boolean v8, p0, Landroid/support/v4/app/n;->s:Z

    .line 2655
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_7

    .line 2750
    :cond_6
    :goto_3
    return-object v7

    .line 2660
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2661
    new-array v5, v4, [Landroid/support/v4/app/FragmentState;

    move v2, v3

    move v1, v3

    .line 2663
    :goto_4
    if-ge v2, v4, :cond_15

    .line 2664
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 2665
    if-eqz v0, :cond_1d

    .line 2666
    iget v1, v0, Landroid/support/v4/app/h;->n:I

    if-gez v1, :cond_8

    .line 2667
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Failure saving state: active "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " has cleared index: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v0, Landroid/support/v4/app/h;->n:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/app/n;->a(Ljava/lang/RuntimeException;)V

    .line 2674
    :cond_8
    new-instance v6, Landroid/support/v4/app/FragmentState;

    invoke-direct {v6, v0}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/h;)V

    .line 2675
    aput-object v6, v5, v2

    .line 2677
    iget v1, v0, Landroid/support/v4/app/h;->k:I

    if-lez v1, :cond_14

    iget-object v1, v6, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    if-nez v1, :cond_14

    .line 31604
    iget-object v1, p0, Landroid/support/v4/app/n;->z:Landroid/os/Bundle;

    if-nez v1, :cond_9

    .line 31605
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/n;->z:Landroid/os/Bundle;

    .line 31607
    :cond_9
    iget-object v1, p0, Landroid/support/v4/app/n;->z:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/h;->g(Landroid/os/Bundle;)V

    .line 31608
    iget-object v1, p0, Landroid/support/v4/app/n;->z:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1, v3}, Landroid/support/v4/app/n;->c(Landroid/support/v4/app/h;Landroid/os/Bundle;Z)V

    .line 31609
    iget-object v1, p0, Landroid/support/v4/app/n;->z:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 31610
    iget-object v1, p0, Landroid/support/v4/app/n;->z:Landroid/os/Bundle;

    .line 31611
    iput-object v7, p0, Landroid/support/v4/app/n;->z:Landroid/os/Bundle;

    .line 31614
    :goto_5
    iget-object v9, v0, Landroid/support/v4/app/h;->P:Landroid/view/View;

    if-eqz v9, :cond_a

    .line 31615
    invoke-direct {p0, v0}, Landroid/support/v4/app/n;->j(Landroid/support/v4/app/h;)V

    .line 31617
    :cond_a
    iget-object v9, v0, Landroid/support/v4/app/h;->m:Landroid/util/SparseArray;

    if-eqz v9, :cond_c

    .line 31618
    if-nez v1, :cond_b

    .line 31619
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 31621
    :cond_b
    const-string/jumbo v9, "android:view_state"

    iget-object v10, v0, Landroid/support/v4/app/h;->m:Landroid/util/SparseArray;

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 31624
    :cond_c
    iget-boolean v9, v0, Landroid/support/v4/app/h;->S:Z

    if-nez v9, :cond_e

    .line 31625
    if-nez v1, :cond_d

    .line 31626
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 31629
    :cond_d
    const-string/jumbo v9, "android:user_visible_hint"

    iget-boolean v10, v0, Landroid/support/v4/app/h;->S:Z

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2678
    :cond_e
    iput-object v1, v6, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    .line 2680
    iget-object v1, v0, Landroid/support/v4/app/h;->q:Landroid/support/v4/app/h;

    if-eqz v1, :cond_12

    .line 2681
    iget-object v1, v0, Landroid/support/v4/app/h;->q:Landroid/support/v4/app/h;

    iget v1, v1, Landroid/support/v4/app/h;->n:I

    if-gez v1, :cond_f

    .line 2682
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Failure saving state: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " has target not in fragment manager: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/support/v4/app/h;->q:Landroid/support/v4/app/h;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/app/n;->a(Ljava/lang/RuntimeException;)V

    .line 2686
    :cond_f
    iget-object v1, v6, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    if-nez v1, :cond_10

    .line 2687
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v6, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    .line 2689
    :cond_10
    iget-object v1, v6, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    const-string/jumbo v9, "android:target_state"

    iget-object v10, v0, Landroid/support/v4/app/h;->q:Landroid/support/v4/app/h;

    .line 31860
    iget v11, v10, Landroid/support/v4/app/h;->n:I

    if-gez v11, :cond_11

    .line 31861
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Fragment "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " is not currently in the FragmentManager"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v11}, Landroid/support/v4/app/n;->a(Ljava/lang/RuntimeException;)V

    .line 31864
    :cond_11
    iget v10, v10, Landroid/support/v4/app/h;->n:I

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2691
    iget v1, v0, Landroid/support/v4/app/h;->s:I

    if-eqz v1, :cond_12

    .line 2692
    iget-object v1, v6, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    const-string/jumbo v9, "android:target_req_state"

    iget v10, v0, Landroid/support/v4/app/h;->s:I

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2702
    :cond_12
    :goto_6
    sget-boolean v1, Landroid/support/v4/app/n;->a:Z

    if-eqz v1, :cond_13

    const-string/jumbo v1, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Saved state of "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v9, ": "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move v0, v8

    .line 2663
    :goto_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto/16 :goto_4

    .line 2699
    :cond_14
    iget-object v1, v0, Landroid/support/v4/app/h;->l:Landroid/os/Bundle;

    iput-object v1, v6, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    goto :goto_6

    .line 2707
    :cond_15
    if-nez v1, :cond_16

    .line 2708
    sget-boolean v0, Landroid/support/v4/app/n;->a:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "FragmentManager"

    const-string/jumbo v1, "saveAllState: no fragments!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2716
    :cond_16
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    .line 2717
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2718
    if-lez v4, :cond_19

    .line 2719
    new-array v1, v4, [I

    move v2, v3

    .line 2720
    :goto_8
    if-ge v2, v4, :cond_1a

    .line 2721
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    iget v0, v0, Landroid/support/v4/app/h;->n:I

    aput v0, v1, v2

    .line 2722
    aget v0, v1, v2

    if-gez v0, :cond_17

    .line 2723
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Failure saving state: active "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    .line 2724
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " has cleared index: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v8, v1, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2723
    invoke-direct {p0, v0}, Landroid/support/v4/app/n;->a(Ljava/lang/RuntimeException;)V

    .line 2727
    :cond_17
    sget-boolean v0, Landroid/support/v4/app/n;->a:Z

    if-eqz v0, :cond_18

    const-string/jumbo v0, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "saveAllState: adding fragment #"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    .line 2728
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2727
    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    :cond_18
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_19
    move-object v1, v7

    .line 2734
    :cond_1a
    iget-object v0, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    .line 2735
    iget-object v0, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2736
    if-lez v2, :cond_1c

    .line 2737
    new-array v7, v2, [Landroid/support/v4/app/BackStackState;

    .line 2738
    :goto_9
    if-ge v3, v2, :cond_1c

    .line 2739
    new-instance v4, Landroid/support/v4/app/BackStackState;

    iget-object v0, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    invoke-direct {v4, v0}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/c;)V

    aput-object v4, v7, v3

    .line 2740
    sget-boolean v0, Landroid/support/v4/app/n;->a:Z

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "saveAllState: adding back stack #"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    .line 2741
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2740
    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 2746
    :cond_1c
    new-instance v0, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    .line 2747
    iput-object v5, v0, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    .line 2748
    iput-object v1, v0, Landroid/support/v4/app/FragmentManagerState;->b:[I

    .line 2749
    iput-object v7, v0, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    move-object v7, v0

    .line 2750
    goto/16 :goto_3

    :cond_1d
    move v0, v1

    goto/16 :goto_7

    :cond_1e
    move-object v1, v7

    goto/16 :goto_5
.end method

.method public final l()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2891
    iput-boolean v0, p0, Landroid/support/v4/app/n;->s:Z

    .line 2892
    iput-boolean v1, p0, Landroid/support/v4/app/n;->d:Z

    .line 2893
    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/n;->a(IZ)V

    .line 2894
    iput-boolean v0, p0, Landroid/support/v4/app/n;->d:Z

    .line 2895
    return-void
.end method

.method public final m()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2898
    iput-boolean v1, p0, Landroid/support/v4/app/n;->s:Z

    .line 2899
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/n;->d:Z

    .line 2900
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/n;->a(IZ)V

    .line 2901
    iput-boolean v1, p0, Landroid/support/v4/app/n;->d:Z

    .line 2902
    return-void
.end method

.method public final n()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2905
    iput-boolean v1, p0, Landroid/support/v4/app/n;->s:Z

    .line 2906
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/n;->d:Z

    .line 2907
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/n;->a(IZ)V

    .line 2908
    iput-boolean v1, p0, Landroid/support/v4/app/n;->d:Z

    .line 2909
    return-void
.end method

.method public final o()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2912
    iput-boolean v1, p0, Landroid/support/v4/app/n;->s:Z

    .line 2913
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/n;->d:Z

    .line 2914
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/n;->a(IZ)V

    .line 2915
    iput-boolean v1, p0, Landroid/support/v4/app/n;->d:Z

    .line 2916
    return-void
.end method

.method public final p()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2919
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/n;->d:Z

    .line 2920
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/n;->a(IZ)V

    .line 2921
    iput-boolean v1, p0, Landroid/support/v4/app/n;->d:Z

    .line 2922
    return-void
.end method

.method public final q()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2928
    iput-boolean v0, p0, Landroid/support/v4/app/n;->s:Z

    .line 2930
    iput-boolean v0, p0, Landroid/support/v4/app/n;->d:Z

    .line 2931
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/n;->a(IZ)V

    .line 2932
    iput-boolean v1, p0, Landroid/support/v4/app/n;->d:Z

    .line 2933
    return-void
.end method

.method public final r()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2936
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/n;->d:Z

    .line 2937
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/n;->a(IZ)V

    .line 2938
    iput-boolean v1, p0, Landroid/support/v4/app/n;->d:Z

    .line 2939
    return-void
.end method

.method public final s()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2948
    iput-boolean v2, p0, Landroid/support/v4/app/n;->t:Z

    .line 2949
    invoke-virtual {p0}, Landroid/support/v4/app/n;->g()Z

    .line 2950
    iput-boolean v2, p0, Landroid/support/v4/app/n;->d:Z

    .line 2951
    invoke-virtual {p0, v0, v0}, Landroid/support/v4/app/n;->a(IZ)V

    .line 2952
    iput-boolean v0, p0, Landroid/support/v4/app/n;->d:Z

    .line 2953
    iput-object v1, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    .line 2954
    iput-object v1, p0, Landroid/support/v4/app/n;->o:Landroid/support/v4/app/j;

    .line 2955
    iput-object v1, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    .line 2956
    return-void
.end method

.method public final t()V
    .locals 3

    .prologue
    .line 2994
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2995
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2996
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 2997
    if-eqz v0, :cond_0

    .line 34271
    invoke-virtual {v0}, Landroid/support/v4/app/h;->onLowMemory()V

    .line 34272
    iget-object v2, v0, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    if-eqz v2, :cond_0

    .line 34273
    iget-object v0, v0, Landroid/support/v4/app/h;->B:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->t()V

    .line 2995
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3002
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 911
    const-string/jumbo v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    iget-object v1, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    if-eqz v1, :cond_0

    .line 915
    iget-object v1, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    invoke-static {v1, v0}, Landroid/support/v4/h/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 919
    :goto_0
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 917
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    invoke-static {v1, v0}, Landroid/support/v4/h/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method
