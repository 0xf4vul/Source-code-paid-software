.class public final Lcom/avast/a/b/a/a$a;
.super Lcom/google/a/g;
.source "SourceFile"

# interfaces
.implements Lcom/avast/a/b/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/a/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avast/a/b/a/a$a$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/a/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/n",
            "<",
            "Lcom/avast/a/b/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lcom/avast/a/b/a/a$a;


# instance fields
.field b:I

.field c:Lcom/avast/a/b/a/a$k;

.field d:J

.field e:J

.field public f:Lcom/google/a/c;

.field g:Lcom/google/a/c;

.field private i:B

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8732
    new-instance v0, Lcom/avast/a/b/a/a$a$1;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$a$1;-><init>()V

    sput-object v0, Lcom/avast/a/b/a/a$a;->a:Lcom/google/a/n;

    .line 9437
    new-instance v0, Lcom/avast/a/b/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/avast/a/b/a/a$a;-><init>(B)V

    .line 9438
    sput-object v0, Lcom/avast/a/b/a/a$a;->h:Lcom/avast/a/b/a/a$a;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$a;->f()V

    .line 9439
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 8657
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/a/g;-><init>(B)V

    .line 8893
    iput-byte v1, p0, Lcom/avast/a/b/a/a$a;->i:B

    .line 8922
    iput v1, p0, Lcom/avast/a/b/a/a$a;->j:I

    .line 8659
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 8660
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 8893
    iput-byte v0, p0, Lcom/avast/a/b/a/a$a;->i:B

    .line 8922
    iput v0, p0, Lcom/avast/a/b/a/a$a;->j:I

    .line 8660
    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0

    .prologue
    .line 8652
    invoke-direct {p0}, Lcom/avast/a/b/a/a$a;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/a/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 8674
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 8893
    iput-byte v0, p0, Lcom/avast/a/b/a/a$a;->i:B

    .line 8922
    iput v0, p0, Lcom/avast/a/b/a/a$a;->j:I

    .line 8675
    invoke-direct {p0}, Lcom/avast/a/b/a/a$a;->f()V

    .line 8678
    const/4 v0, 0x0

    .line 8679
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 8680
    :try_start_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v2

    .line 8681
    sparse-switch v2, :sswitch_data_0

    .line 10071
    invoke-virtual {p1, v2}, Lcom/google/a/d;->b(I)Z

    move-result v2

    .line 8686
    if-nez v2, :cond_0

    move v0, v1

    .line 8688
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 8684
    goto :goto_0

    .line 10343
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/a/d;->f()I

    move-result v2

    .line 8694
    invoke-static {v2}, Lcom/avast/a/b/a/a$k;->a(I)Lcom/avast/a/b/a/a$k;

    move-result-object v2

    .line 8695
    if-eqz v2, :cond_0

    .line 8696
    iget v3, p0, Lcom/avast/a/b/a/a$a;->b:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/avast/a/b/a/a$a;->b:I

    .line 8697
    iput-object v2, p0, Lcom/avast/a/b/a/a$a;->c:Lcom/avast/a/b/a/a$k;
    :try_end_0
    .catch Lcom/google/a/i; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8724
    :catch_0
    move-exception v0

    .line 13057
    :try_start_1
    iput-object p0, v0, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 8724
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8729
    :catchall_0
    move-exception v0

    throw v0

    .line 8702
    :sswitch_2
    :try_start_2
    iget v2, p0, Lcom/avast/a/b/a/a$a;->b:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/avast/a/b/a/a$a;->b:I

    .line 11193
    invoke-virtual {p1}, Lcom/google/a/d;->g()J

    move-result-wide v2

    .line 8703
    iput-wide v2, p0, Lcom/avast/a/b/a/a$a;->d:J
    :try_end_2
    .catch Lcom/google/a/i; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 8725
    :catch_1
    move-exception v0

    .line 8726
    :try_start_3
    new-instance v1, Lcom/google/a/i;

    .line 8727
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/a/i;-><init>(Ljava/lang/String;)V

    .line 14057
    iput-object p0, v1, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 8727
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8707
    :sswitch_3
    :try_start_4
    iget v2, p0, Lcom/avast/a/b/a/a$a;->b:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/avast/a/b/a/a$a;->b:I

    .line 12193
    invoke-virtual {p1}, Lcom/google/a/d;->g()J

    move-result-wide v2

    .line 8708
    iput-wide v2, p0, Lcom/avast/a/b/a/a$a;->e:J

    goto :goto_0

    .line 8712
    :sswitch_4
    iget v2, p0, Lcom/avast/a/b/a/a$a;->b:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/avast/a/b/a/a$a;->b:I

    .line 8713
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$a;->f:Lcom/google/a/c;

    goto :goto_0

    .line 8717
    :sswitch_5
    iget v2, p0, Lcom/avast/a/b/a/a$a;->b:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/avast/a/b/a/a$a;->b:I

    .line 8718
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$a;->g:Lcom/google/a/c;
    :try_end_4
    .catch Lcom/google/a/i; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 8730
    :cond_1
    return-void

    .line 8681
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/a/d;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    .line 8652
    invoke-direct {p0, p1}, Lcom/avast/a/b/a/a$a;-><init>(Lcom/google/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$a;I)I
    .locals 0

    .prologue
    .line 8652
    iput p1, p0, Lcom/avast/a/b/a/a$a;->b:I

    return p1
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$a;J)J
    .locals 1

    .prologue
    .line 8652
    iput-wide p1, p0, Lcom/avast/a/b/a/a$a;->d:J

    return-wide p1
.end method

.method public static a(Lcom/avast/a/b/a/a$a;)Lcom/avast/a/b/a/a$a$a;
    .locals 1

    .prologue
    .line 16012
    invoke-static {}, Lcom/avast/a/b/a/a$a$a;->f()Lcom/avast/a/b/a/a$a$a;

    move-result-object v0

    .line 9015
    invoke-virtual {v0, p0}, Lcom/avast/a/b/a/a$a$a;->a(Lcom/avast/a/b/a/a$a;)Lcom/avast/a/b/a/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/avast/a/b/a/a$a;
    .locals 1

    .prologue
    .line 8664
    sget-object v0, Lcom/avast/a/b/a/a$a;->h:Lcom/avast/a/b/a/a$a;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$a;Lcom/avast/a/b/a/a$k;)Lcom/avast/a/b/a/a$k;
    .locals 0

    .prologue
    .line 8652
    iput-object p1, p0, Lcom/avast/a/b/a/a$a;->c:Lcom/avast/a/b/a/a$k;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$a;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0

    .prologue
    .line 8652
    iput-object p1, p0, Lcom/avast/a/b/a/a$a;->f:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/a/b/a/a$a;J)J
    .locals 1

    .prologue
    .line 8652
    iput-wide p1, p0, Lcom/avast/a/b/a/a$a;->e:J

    return-wide p1
.end method

.method static synthetic b(Lcom/avast/a/b/a/a$a;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0

    .prologue
    .line 8652
    iput-object p1, p0, Lcom/avast/a/b/a/a$a;->g:Lcom/google/a/c;

    return-object p1
.end method

.method public static d()Lcom/avast/a/b/a/a$a$a;
    .locals 1

    .prologue
    .line 9012
    invoke-static {}, Lcom/avast/a/b/a/a$a$a;->f()Lcom/avast/a/b/a/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 8887
    sget-object v0, Lcom/avast/a/b/a/a$k;->a:Lcom/avast/a/b/a/a$k;

    iput-object v0, p0, Lcom/avast/a/b/a/a$a;->c:Lcom/avast/a/b/a/a$k;

    .line 8888
    iput-wide v2, p0, Lcom/avast/a/b/a/a$a;->d:J

    .line 8889
    iput-wide v2, p0, Lcom/avast/a/b/a/a$a;->e:J

    .line 8890
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/a/b/a/a$a;->f:Lcom/google/a/c;

    .line 8891
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/a/b/a/a$a;->g:Lcom/google/a/c;

    .line 8892
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 8904
    invoke-virtual {p0}, Lcom/avast/a/b/a/a$a;->c()I

    .line 8905
    iget v0, p0, Lcom/avast/a/b/a/a$a;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 8906
    iget-object v0, p0, Lcom/avast/a/b/a/a$a;->c:Lcom/avast/a/b/a/a$k;

    .line 14159
    iget v0, v0, Lcom/avast/a/b/a/a$k;->d:I

    .line 8906
    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->b(II)V

    .line 8908
    :cond_0
    iget v0, p0, Lcom/avast/a/b/a/a$a;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 8909
    iget-wide v0, p0, Lcom/avast/a/b/a/a$a;->d:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/a/e;->a(IJ)V

    .line 8911
    :cond_1
    iget v0, p0, Lcom/avast/a/b/a/a$a;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 8912
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/avast/a/b/a/a$a;->e:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/a/e;->a(IJ)V

    .line 8914
    :cond_2
    iget v0, p0, Lcom/avast/a/b/a/a$a;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 8915
    iget-object v0, p0, Lcom/avast/a/b/a/a$a;->f:Lcom/google/a/c;

    invoke-virtual {p1, v4, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 8917
    :cond_3
    iget v0, p0, Lcom/avast/a/b/a/a$a;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 8918
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/avast/a/b/a/a$a;->g:Lcom/google/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 8920
    :cond_4
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 8895
    iget-byte v1, p0, Lcom/avast/a/b/a/a$a;->i:B

    .line 8896
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 8899
    :goto_0
    return v0

    .line 8896
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 8898
    :cond_1
    iput-byte v0, p0, Lcom/avast/a/b/a/a$a;->i:B

    goto :goto_0
.end method

.method public final c()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 8924
    iget v0, p0, Lcom/avast/a/b/a/a$a;->j:I

    .line 8925
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 8949
    :goto_0
    return v0

    .line 8927
    :cond_0
    const/4 v0, 0x0

    .line 8928
    iget v1, p0, Lcom/avast/a/b/a/a$a;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 8929
    iget-object v0, p0, Lcom/avast/a/b/a/a$a;->c:Lcom/avast/a/b/a/a$k;

    .line 15159
    iget v0, v0, Lcom/avast/a/b/a/a$k;->d:I

    .line 8930
    invoke-static {v2, v0}, Lcom/google/a/e;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 8932
    :cond_1
    iget v1, p0, Lcom/avast/a/b/a/a$a;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_2

    .line 8933
    iget-wide v2, p0, Lcom/avast/a/b/a/a$a;->d:J

    .line 8934
    invoke-static {v4, v2, v3}, Lcom/google/a/e;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8936
    :cond_2
    iget v1, p0, Lcom/avast/a/b/a/a$a;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_3

    .line 8937
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/avast/a/b/a/a$a;->e:J

    .line 8938
    invoke-static {v1, v2, v3}, Lcom/google/a/e;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8940
    :cond_3
    iget v1, p0, Lcom/avast/a/b/a/a$a;->b:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 8941
    iget-object v1, p0, Lcom/avast/a/b/a/a$a;->f:Lcom/google/a/c;

    .line 8942
    invoke-static {v5, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8944
    :cond_4
    iget v1, p0, Lcom/avast/a/b/a/a$a;->b:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 8945
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/avast/a/b/a/a$a;->g:Lcom/google/a/c;

    .line 8946
    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8948
    :cond_5
    iput v0, p0, Lcom/avast/a/b/a/a$a;->j:I

    goto :goto_0
.end method

.method public final e()Lcom/avast/a/b/a/a$a$a;
    .locals 1

    .prologue
    .line 9017
    .line 17012
    invoke-static {}, Lcom/avast/a/b/a/a$a$a;->f()Lcom/avast/a/b/a/a$a$a;

    move-result-object v0

    .line 16015
    invoke-virtual {v0, p0}, Lcom/avast/a/b/a/a$a$a;->a(Lcom/avast/a/b/a/a$a;)Lcom/avast/a/b/a/a$a$a;

    move-result-object v0

    .line 9017
    return-object v0
.end method
