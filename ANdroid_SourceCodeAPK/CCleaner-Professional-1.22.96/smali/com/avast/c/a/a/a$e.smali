.class public final Lcom/avast/c/a/a/a$e;
.super Lcom/google/a/g;
.source "SourceFile"

# interfaces
.implements Lcom/avast/c/a/a/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/c/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static a:Lcom/google/a/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/n",
            "<",
            "Lcom/avast/c/a/a/a$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/avast/c/a/a/a$e;


# instance fields
.field public b:Lcom/google/a/c;

.field public c:Lcom/google/a/c;

.field public d:J

.field private f:I

.field private g:Lcom/avast/c/a/a/a$g;

.field private h:B

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2588
    new-instance v0, Lcom/avast/c/a/a/a$e$1;

    invoke-direct {v0}, Lcom/avast/c/a/a/a$e$1;-><init>()V

    sput-object v0, Lcom/avast/c/a/a/a$e;->a:Lcom/google/a/n;

    .line 3102
    new-instance v0, Lcom/avast/c/a/a/a$e;

    invoke-direct {v0}, Lcom/avast/c/a/a/a$e;-><init>()V

    .line 3103
    sput-object v0, Lcom/avast/c/a/a/a$e;->e:Lcom/avast/c/a/a/a$e;

    invoke-direct {v0}, Lcom/avast/c/a/a/a$e;->a()V

    .line 3104
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2517
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 2682
    iput-byte v0, p0, Lcom/avast/c/a/a/a$e;->h:B

    .line 2708
    iput v0, p0, Lcom/avast/c/a/a/a$e;->i:I

    .line 2517
    return-void
.end method

.method private constructor <init>(Lcom/google/a/d;Lcom/google/a/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x1

    .line 2531
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 2682
    iput-byte v0, p0, Lcom/avast/c/a/a/a$e;->h:B

    .line 2708
    iput v0, p0, Lcom/avast/c/a/a/a$e;->i:I

    .line 2532
    invoke-direct {p0}, Lcom/avast/c/a/a/a$e;->a()V

    .line 2535
    const/4 v0, 0x0

    move v2, v0

    .line 2536
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    .line 2537
    :try_start_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 2538
    sparse-switch v0, :sswitch_data_0

    .line 4071
    invoke-virtual {p1, v0}, Lcom/google/a/d;->b(I)Z

    move-result v0

    .line 2543
    if-nez v0, :cond_0

    move v2, v3

    .line 2545
    goto :goto_0

    :sswitch_0
    move v2, v3

    .line 2541
    goto :goto_0

    .line 2550
    :sswitch_1
    const/4 v0, 0x0

    .line 2551
    iget v1, p0, Lcom/avast/c/a/a/a$e;->f:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_3

    .line 2552
    iget-object v0, p0, Lcom/avast/c/a/a/a$e;->g:Lcom/avast/c/a/a/a$g;

    .line 4722
    invoke-static {v0}, Lcom/avast/c/a/a/a$g;->a(Lcom/avast/c/a/a/a$g;)Lcom/avast/c/a/a/a$g$a;

    move-result-object v0

    move-object v1, v0

    .line 2554
    :goto_1
    sget-object v0, Lcom/avast/c/a/a/a$g;->a:Lcom/google/a/n;

    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/n;Lcom/google/a/f;)Lcom/google/a/l;

    move-result-object v0

    check-cast v0, Lcom/avast/c/a/a/a$g;

    iput-object v0, p0, Lcom/avast/c/a/a/a$e;->g:Lcom/avast/c/a/a/a$g;

    .line 2555
    if-eqz v1, :cond_1

    .line 2556
    iget-object v0, p0, Lcom/avast/c/a/a/a$e;->g:Lcom/avast/c/a/a/a$g;

    invoke-virtual {v1, v0}, Lcom/avast/c/a/a/a$g$a;->a(Lcom/avast/c/a/a/a$g;)Lcom/avast/c/a/a/a$g$a;

    .line 2557
    invoke-virtual {v1}, Lcom/avast/c/a/a/a$g$a;->a()Lcom/avast/c/a/a/a$g;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/c/a/a/a$e;->g:Lcom/avast/c/a/a/a$g;

    .line 2559
    :cond_1
    iget v0, p0, Lcom/avast/c/a/a/a$e;->f:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/c/a/a/a$e;->f:I
    :try_end_0
    .catch Lcom/google/a/i; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2580
    :catch_0
    move-exception v0

    .line 6057
    :try_start_1
    iput-object p0, v0, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 2580
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2585
    :catchall_0
    move-exception v0

    throw v0

    .line 2563
    :sswitch_2
    :try_start_2
    iget v0, p0, Lcom/avast/c/a/a/a$e;->f:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/c/a/a/a$e;->f:I

    .line 2564
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/c/a/a/a$e;->b:Lcom/google/a/c;
    :try_end_2
    .catch Lcom/google/a/i; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2581
    :catch_1
    move-exception v0

    .line 2582
    :try_start_3
    new-instance v1, Lcom/google/a/i;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/a/i;-><init>(Ljava/lang/String;)V

    .line 7057
    iput-object p0, v1, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 2582
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2568
    :sswitch_3
    :try_start_4
    iget v0, p0, Lcom/avast/c/a/a/a$e;->f:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/c/a/a/a$e;->f:I

    .line 2569
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/c/a/a/a$e;->c:Lcom/google/a/c;

    goto :goto_0

    .line 2573
    :sswitch_4
    iget v0, p0, Lcom/avast/c/a/a/a$e;->f:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/c/a/a/a$e;->f:I

    .line 5193
    invoke-virtual {p1}, Lcom/google/a/d;->g()J

    move-result-wide v0

    .line 2574
    iput-wide v0, p0, Lcom/avast/c/a/a/a$e;->d:J
    :try_end_4
    .catch Lcom/google/a/i; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2586
    :cond_2
    return-void

    :cond_3
    move-object v1, v0

    goto :goto_1

    .line 2538
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/a/d;Lcom/google/a/f;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    .line 2509
    invoke-direct {p0, p1, p2}, Lcom/avast/c/a/a/a$e;-><init>(Lcom/google/a/d;Lcom/google/a/f;)V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/avast/c/a/a/a$e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2764
    sget-object v0, Lcom/avast/c/a/a/a$e;->a:Lcom/google/a/n;

    invoke-interface {v0, p0}, Lcom/google/a/n;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/c/a/a/a$e;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 2677
    invoke-static {}, Lcom/avast/c/a/a/a$g;->a()Lcom/avast/c/a/a/a$g;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/c/a/a/a$e;->g:Lcom/avast/c/a/a/a$g;

    .line 2678
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/c/a/a/a$e;->b:Lcom/google/a/c;

    .line 2679
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/c/a/a/a$e;->c:Lcom/google/a/c;

    .line 2680
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avast/c/a/a/a$e;->d:J

    .line 2681
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2693
    invoke-virtual {p0}, Lcom/avast/c/a/a/a$e;->c()I

    .line 2694
    iget v0, p0, Lcom/avast/c/a/a/a$e;->f:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2695
    iget-object v0, p0, Lcom/avast/c/a/a/a$e;->g:Lcom/avast/c/a/a/a$g;

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/l;)V

    .line 2697
    :cond_0
    iget v0, p0, Lcom/avast/c/a/a/a$e;->f:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2698
    iget-object v0, p0, Lcom/avast/c/a/a/a$e;->b:Lcom/google/a/c;

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 2700
    :cond_1
    iget v0, p0, Lcom/avast/c/a/a/a$e;->f:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 2701
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/avast/c/a/a/a$e;->c:Lcom/google/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 2703
    :cond_2
    iget v0, p0, Lcom/avast/c/a/a/a$e;->f:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 2704
    iget-wide v0, p0, Lcom/avast/c/a/a/a$e;->d:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/a/e;->a(IJ)V

    .line 2706
    :cond_3
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2684
    iget-byte v1, p0, Lcom/avast/c/a/a/a$e;->h:B

    .line 2685
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 2688
    :goto_0
    return v0

    .line 2685
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2687
    :cond_1
    iput-byte v0, p0, Lcom/avast/c/a/a/a$e;->h:B

    goto :goto_0
.end method

.method public final c()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2710
    iget v0, p0, Lcom/avast/c/a/a/a$e;->i:I

    .line 2711
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2731
    :goto_0
    return v0

    .line 2713
    :cond_0
    const/4 v0, 0x0

    .line 2714
    iget v1, p0, Lcom/avast/c/a/a/a$e;->f:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 2715
    iget-object v0, p0, Lcom/avast/c/a/a/a$e;->g:Lcom/avast/c/a/a/a$g;

    invoke-static {v2, v0}, Lcom/google/a/e;->b(ILcom/google/a/l;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 2718
    :cond_1
    iget v1, p0, Lcom/avast/c/a/a/a$e;->f:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 2719
    iget-object v1, p0, Lcom/avast/c/a/a/a$e;->b:Lcom/google/a/c;

    invoke-static {v3, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2722
    :cond_2
    iget v1, p0, Lcom/avast/c/a/a/a$e;->f:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 2723
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/avast/c/a/a/a$e;->c:Lcom/google/a/c;

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2726
    :cond_3
    iget v1, p0, Lcom/avast/c/a/a/a$e;->f:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 2727
    iget-wide v2, p0, Lcom/avast/c/a/a/a$e;->d:J

    invoke-static {v4, v2, v3}, Lcom/google/a/e;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2730
    :cond_4
    iput v0, p0, Lcom/avast/c/a/a/a$e;->i:I

    goto :goto_0
.end method
