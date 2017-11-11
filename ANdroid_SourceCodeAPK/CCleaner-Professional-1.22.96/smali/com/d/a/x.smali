.class public final Lcom/d/a/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field final a:Lcom/d/a/w$a;

.field b:Z

.field public c:Z

.field public d:I

.field public e:Landroid/graphics/drawable/Drawable;

.field private final g:Lcom/d/a/t;

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/d/a/x;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/d/a/x;->c:Z

    .line 78
    iput-object v1, p0, Lcom/d/a/x;->g:Lcom/d/a/t;

    .line 79
    new-instance v0, Lcom/d/a/w$a;

    invoke-direct {v0, v1, v1}, Lcom/d/a/w$a;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/d/a/x;->a:Lcom/d/a/w$a;

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/d/a/t;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/d/a/x;->c:Z

    .line 69
    iget-boolean v0, p1, Lcom/d/a/t;->o:Z

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Picasso instance already shut down. Cannot submit new requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/d/a/x;->g:Lcom/d/a/t;

    .line 74
    new-instance v0, Lcom/d/a/w$a;

    iget-object v1, p1, Lcom/d/a/t;->l:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, p2, v1}, Lcom/d/a/w$a;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/d/a/x;->a:Lcom/d/a/w$a;

    .line 75
    return-void
.end method

.method private a()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 664
    iget v0, p0, Lcom/d/a/x;->d:I

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/d/a/x;->g:Lcom/d/a/t;

    iget-object v0, v0, Lcom/d/a/t;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/d/a/x;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 667
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/d/a/x;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;Lcom/d/a/e;)V
    .locals 24

    .prologue
    .line 603
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22

    .line 604
    invoke-static {}, Lcom/d/a/ae;->a()V

    .line 606
    if-nez p1, :cond_0

    .line 607
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Target must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 610
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/d/a/x;->a:Lcom/d/a/w$a;

    .line 1245
    iget-object v5, v4, Lcom/d/a/w$a;->a:Landroid/net/Uri;

    if-nez v5, :cond_1

    iget v4, v4, Lcom/d/a/w$a;->b:I

    if-eqz v4, :cond_3

    :cond_1
    const/4 v4, 0x1

    .line 610
    :goto_0
    if-nez v4, :cond_4

    .line 611
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/d/a/x;->g:Lcom/d/a/t;

    .line 2205
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/d/a/t;->a(Ljava/lang/Object;)V

    .line 612
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/d/a/x;->c:Z

    if-eqz v4, :cond_2

    .line 613
    invoke-direct/range {p0 .. p0}, Lcom/d/a/x;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/d/a/u;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 661
    :cond_2
    :goto_1
    return-void

    .line 1245
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 618
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/d/a/x;->b:Z

    if-eqz v4, :cond_b

    .line 619
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/d/a/x;->a:Lcom/d/a/w$a;

    .line 2249
    iget v5, v4, Lcom/d/a/w$a;->d:I

    if-nez v5, :cond_5

    iget v4, v4, Lcom/d/a/w$a;->e:I

    if-eqz v4, :cond_6

    :cond_5
    const/4 v4, 0x1

    .line 619
    :goto_2
    if-eqz v4, :cond_7

    .line 620
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Fit cannot be used with resize."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2249
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 622
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    .line 623
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    .line 624
    if-eqz v4, :cond_8

    if-nez v5, :cond_a

    .line 625
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/d/a/x;->c:Z

    if-eqz v4, :cond_9

    .line 626
    invoke-direct/range {p0 .. p0}, Lcom/d/a/x;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/d/a/u;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 628
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/d/a/x;->g:Lcom/d/a/t;

    new-instance v5, Lcom/d/a/h;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v5, v0, v1, v2}, Lcom/d/a/h;-><init>(Lcom/d/a/x;Landroid/widget/ImageView;Lcom/d/a/e;)V

    .line 2465
    iget-object v4, v4, Lcom/d/a/t;->j:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 631
    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/d/a/x;->a:Lcom/d/a/w$a;

    invoke-virtual {v6, v4, v5}, Lcom/d/a/w$a;->a(II)Lcom/d/a/w$a;

    .line 2673
    :cond_b
    sget-object v4, Lcom/d/a/x;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v21

    .line 2675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/d/a/x;->a:Lcom/d/a/w$a;

    move-object/from16 v19, v0

    .line 3439
    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/d/a/w$a;->g:Z

    if-eqz v4, :cond_c

    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/d/a/w$a;->f:Z

    if-eqz v4, :cond_c

    .line 3440
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Center crop and center inside can not be used together."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3442
    :cond_c
    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/d/a/w$a;->f:Z

    if-eqz v4, :cond_d

    move-object/from16 v0, v19

    iget v4, v0, Lcom/d/a/w$a;->d:I

    if-nez v4, :cond_d

    move-object/from16 v0, v19

    iget v4, v0, Lcom/d/a/w$a;->e:I

    if-nez v4, :cond_d

    .line 3443
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Center crop requires calling resize with positive width and height."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3446
    :cond_d
    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/d/a/w$a;->g:Z

    if-eqz v4, :cond_e

    move-object/from16 v0, v19

    iget v4, v0, Lcom/d/a/w$a;->d:I

    if-nez v4, :cond_e

    move-object/from16 v0, v19

    iget v4, v0, Lcom/d/a/w$a;->e:I

    if-nez v4, :cond_e

    .line 3447
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Center inside requires calling resize with positive width and height."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3450
    :cond_e
    move-object/from16 v0, v19

    iget v4, v0, Lcom/d/a/w$a;->o:I

    if-nez v4, :cond_f

    .line 3451
    sget v4, Lcom/d/a/t$e;->b:I

    move-object/from16 v0, v19

    iput v4, v0, Lcom/d/a/w$a;->o:I

    .line 3453
    :cond_f
    new-instance v4, Lcom/d/a/w;

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/d/a/w$a;->a:Landroid/net/Uri;

    move-object/from16 v0, v19

    iget v6, v0, Lcom/d/a/w$a;->b:I

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/d/a/w$a;->c:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/d/a/w$a;->m:Ljava/util/List;

    move-object/from16 v0, v19

    iget v9, v0, Lcom/d/a/w$a;->d:I

    move-object/from16 v0, v19

    iget v10, v0, Lcom/d/a/w$a;->e:I

    move-object/from16 v0, v19

    iget-boolean v11, v0, Lcom/d/a/w$a;->f:Z

    move-object/from16 v0, v19

    iget-boolean v12, v0, Lcom/d/a/w$a;->g:Z

    move-object/from16 v0, v19

    iget-boolean v13, v0, Lcom/d/a/w$a;->h:Z

    move-object/from16 v0, v19

    iget v14, v0, Lcom/d/a/w$a;->i:F

    move-object/from16 v0, v19

    iget v15, v0, Lcom/d/a/w$a;->j:F

    move-object/from16 v0, v19

    iget v0, v0, Lcom/d/a/w$a;->k:F

    move/from16 v16, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/d/a/w$a;->l:Z

    move/from16 v17, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/d/a/w$a;->n:Landroid/graphics/Bitmap$Config;

    move-object/from16 v18, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/d/a/w$a;->o:I

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-direct/range {v4 .. v20}, Lcom/d/a/w;-><init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZZFFFZLandroid/graphics/Bitmap$Config;IB)V

    .line 2676
    move/from16 v0, v21

    iput v0, v4, Lcom/d/a/w;->a:I

    .line 2677
    move-wide/from16 v0, v22

    iput-wide v0, v4, Lcom/d/a/w;->b:J

    .line 2679
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/d/a/x;->g:Lcom/d/a/t;

    iget-boolean v5, v5, Lcom/d/a/t;->n:Z

    .line 2680
    if-eqz v5, :cond_10

    .line 2681
    const-string/jumbo v6, "Main"

    const-string/jumbo v7, "created"

    invoke-virtual {v4}, Lcom/d/a/w;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/d/a/w;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2684
    :cond_10
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/d/a/x;->g:Lcom/d/a/t;

    .line 3454
    iget-object v7, v6, Lcom/d/a/t;->c:Lcom/d/a/t$f;

    invoke-interface {v7, v4}, Lcom/d/a/t$f;->a(Lcom/d/a/w;)Lcom/d/a/w;

    move-result-object v14

    .line 3455
    if-nez v14, :cond_11

    .line 3456
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Request transformer "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v6, Lcom/d/a/t;->c:Lcom/d/a/t$f;

    .line 3457
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " returned null for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2685
    :cond_11
    if-eq v14, v4, :cond_12

    .line 2687
    move/from16 v0, v21

    iput v0, v14, Lcom/d/a/w;->a:I

    .line 2688
    move-wide/from16 v0, v22

    iput-wide v0, v14, Lcom/d/a/w;->b:J

    .line 2690
    if-eqz v5, :cond_12

    .line 2691
    const-string/jumbo v4, "Main"

    const-string/jumbo v5, "changed"

    invoke-virtual {v14}, Lcom/d/a/w;->a()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "into "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    :cond_12
    invoke-static {v14}, Lcom/d/a/ae;->a(Lcom/d/a/w;)Ljava/lang/String;

    move-result-object v12

    .line 637
    move-object/from16 v0, p0

    iget v4, v0, Lcom/d/a/x;->j:I

    invoke-static {v4}, Lcom/d/a/p;->a(I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 638
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/d/a/x;->g:Lcom/d/a/t;

    invoke-virtual {v4, v12}, Lcom/d/a/t;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 639
    if-eqz v6, :cond_13

    .line 640
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/d/a/x;->g:Lcom/d/a/t;

    .line 4205
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/d/a/t;->a(Ljava/lang/Object;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/d/a/x;->g:Lcom/d/a/t;

    iget-object v5, v4, Lcom/d/a/t;->e:Landroid/content/Context;

    sget-object v7, Lcom/d/a/t$d;->a:Lcom/d/a/t$d;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/d/a/x;->h:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/d/a/x;->g:Lcom/d/a/t;

    iget-boolean v9, v4, Lcom/d/a/t;->m:Z

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v9}, Lcom/d/a/u;->a(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/d/a/t$d;ZZ)V

    .line 642
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/d/a/x;->g:Lcom/d/a/t;

    iget-boolean v4, v4, Lcom/d/a/t;->n:Z

    if-eqz v4, :cond_2

    .line 643
    const-string/jumbo v4, "Main"

    const-string/jumbo v5, "completed"

    invoke-virtual {v14}, Lcom/d/a/w;->b()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "from "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/d/a/t$d;->a:Lcom/d/a/t$d;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 652
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/d/a/x;->c:Z

    if-eqz v4, :cond_14

    .line 653
    invoke-direct/range {p0 .. p0}, Lcom/d/a/x;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/d/a/u;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 656
    :cond_14
    new-instance v4, Lcom/d/a/l;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/d/a/x;->g:Lcom/d/a/t;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/d/a/x;->j:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/d/a/x;->k:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/d/a/x;->i:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/d/a/x;->l:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/d/a/x;->m:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/d/a/x;->h:Z

    move-object/from16 v6, p1

    move-object v7, v14

    move-object/from16 v14, p2

    invoke-direct/range {v4 .. v15}, Lcom/d/a/l;-><init>(Lcom/d/a/t;Landroid/widget/ImageView;Lcom/d/a/w;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lcom/d/a/e;Z)V

    .line 660
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/d/a/x;->g:Lcom/d/a/t;

    invoke-virtual {v5, v4}, Lcom/d/a/t;->a(Lcom/d/a/a;)V

    goto/16 :goto_1
.end method
