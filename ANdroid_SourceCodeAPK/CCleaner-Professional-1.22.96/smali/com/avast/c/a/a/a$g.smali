.class public final Lcom/avast/c/a/a/a$g;
.super Lcom/google/a/g;
.source "SourceFile"

# interfaces
.implements Lcom/avast/c/a/a/a$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/c/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avast/c/a/a/a$g$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/a/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/n",
            "<",
            "Lcom/avast/c/a/a/a$g;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/avast/c/a/a/a$g;


# instance fields
.field b:I

.field c:Lcom/google/a/c;

.field private e:B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1583
    new-instance v0, Lcom/avast/c/a/a/a$g$1;

    invoke-direct {v0}, Lcom/avast/c/a/a/a$g$1;-><init>()V

    sput-object v0, Lcom/avast/c/a/a/a$g;->a:Lcom/google/a/n;

    .line 1864
    new-instance v0, Lcom/avast/c/a/a/a$g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/avast/c/a/a/a$g;-><init>(B)V

    .line 1865
    sput-object v0, Lcom/avast/c/a/a/a$g;->d:Lcom/avast/c/a/a/a$g;

    .line 6624
    sget-object v1, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v1, v0, Lcom/avast/c/a/a/a$g;->c:Lcom/google/a/c;

    .line 1866
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1532
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/a/g;-><init>(B)V

    .line 1626
    iput-byte v1, p0, Lcom/avast/c/a/a/a$g;->e:B

    .line 1643
    iput v1, p0, Lcom/avast/c/a/a/a$g;->f:I

    .line 1534
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1535
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 1626
    iput-byte v0, p0, Lcom/avast/c/a/a/a$g;->e:B

    .line 1643
    iput v0, p0, Lcom/avast/c/a/a/a$g;->f:I

    .line 1535
    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0

    .prologue
    .line 1527
    invoke-direct {p0}, Lcom/avast/c/a/a/a$g;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/a/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 1549
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 1626
    iput-byte v0, p0, Lcom/avast/c/a/a/a$g;->e:B

    .line 1643
    iput v0, p0, Lcom/avast/c/a/a/a$g;->f:I

    .line 2624
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/c/a/a/a$g;->c:Lcom/google/a/c;

    .line 1553
    const/4 v0, 0x0

    .line 1554
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1555
    :try_start_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v2

    .line 1556
    sparse-switch v2, :sswitch_data_0

    .line 3071
    invoke-virtual {p1, v2}, Lcom/google/a/d;->b(I)Z

    move-result v2

    .line 1561
    if-nez v2, :cond_0

    move v0, v1

    .line 1563
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 1559
    goto :goto_0

    .line 1568
    :sswitch_1
    iget v2, p0, Lcom/avast/c/a/a/a$g;->b:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/avast/c/a/a/a$g;->b:I

    .line 1569
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/c/a/a/a$g;->c:Lcom/google/a/c;
    :try_end_0
    .catch Lcom/google/a/i; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1575
    :catch_0
    move-exception v0

    .line 4057
    :try_start_1
    iput-object p0, v0, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 1575
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1580
    :catchall_0
    move-exception v0

    throw v0

    .line 1576
    :catch_1
    move-exception v0

    .line 1577
    :try_start_2
    new-instance v1, Lcom/google/a/i;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/a/i;-><init>(Ljava/lang/String;)V

    .line 5057
    iput-object p0, v1, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 1577
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1581
    :cond_1
    return-void

    .line 1556
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 1527
    invoke-direct {p0, p1}, Lcom/avast/c/a/a/a$g;-><init>(Lcom/google/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/avast/c/a/a/a$g;I)I
    .locals 0

    .prologue
    .line 1527
    iput p1, p0, Lcom/avast/c/a/a/a$g;->b:I

    return p1
.end method

.method public static a(Lcom/avast/c/a/a/a$g;)Lcom/avast/c/a/a/a$g$a;
    .locals 1

    .prologue
    .line 5717
    invoke-static {}, Lcom/avast/c/a/a/a$g$a;->e()Lcom/avast/c/a/a/a$g$a;

    move-result-object v0

    .line 1720
    invoke-virtual {v0, p0}, Lcom/avast/c/a/a/a$g$a;->a(Lcom/avast/c/a/a/a$g;)Lcom/avast/c/a/a/a$g$a;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/avast/c/a/a/a$g;
    .locals 1

    .prologue
    .line 1539
    sget-object v0, Lcom/avast/c/a/a/a$g;->d:Lcom/avast/c/a/a/a$g;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/c/a/a/a$g;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0

    .prologue
    .line 1527
    iput-object p1, p0, Lcom/avast/c/a/a/a$g;->c:Lcom/google/a/c;

    return-object p1
.end method

.method public static d()Lcom/avast/c/a/a/a$g$a;
    .locals 1

    .prologue
    .line 1717
    invoke-static {}, Lcom/avast/c/a/a/a$g$a;->e()Lcom/avast/c/a/a/a$g$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/a/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1637
    invoke-virtual {p0}, Lcom/avast/c/a/a/a$g;->c()I

    .line 1638
    iget v0, p0, Lcom/avast/c/a/a/a$g;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1639
    iget-object v0, p0, Lcom/avast/c/a/a/a$g;->c:Lcom/google/a/c;

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 1641
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1628
    iget-byte v1, p0, Lcom/avast/c/a/a/a$g;->e:B

    .line 1629
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 1632
    :goto_0
    return v0

    .line 1629
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1631
    :cond_1
    iput-byte v0, p0, Lcom/avast/c/a/a/a$g;->e:B

    goto :goto_0
.end method

.method public final c()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1645
    iget v0, p0, Lcom/avast/c/a/a/a$g;->f:I

    .line 1646
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1654
    :goto_0
    return v0

    .line 1648
    :cond_0
    const/4 v0, 0x0

    .line 1649
    iget v1, p0, Lcom/avast/c/a/a/a$g;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 1650
    iget-object v0, p0, Lcom/avast/c/a/a/a$g;->c:Lcom/google/a/c;

    invoke-static {v2, v0}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1653
    :cond_1
    iput v0, p0, Lcom/avast/c/a/a/a$g;->f:I

    goto :goto_0
.end method
