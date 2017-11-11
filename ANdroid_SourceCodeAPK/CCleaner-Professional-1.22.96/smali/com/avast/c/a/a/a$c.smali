.class public final Lcom/avast/c/a/a/a$c;
.super Lcom/google/a/g;
.source "SourceFile"

# interfaces
.implements Lcom/avast/c/a/a/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/c/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avast/c/a/a/a$c$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/a/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/n",
            "<",
            "Lcom/avast/c/a/a/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/avast/c/a/a/a$c;


# instance fields
.field b:I

.field c:Lcom/avast/c/a/a/a$g;

.field d:Lcom/avast/c/a/a/a$a;

.field e:Lcom/google/a/c;

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1994
    new-instance v0, Lcom/avast/c/a/a/a$c$1;

    invoke-direct {v0}, Lcom/avast/c/a/a/a$c$1;-><init>()V

    sput-object v0, Lcom/avast/c/a/a/a$c;->a:Lcom/google/a/n;

    .line 2444
    new-instance v0, Lcom/avast/c/a/a/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/avast/c/a/a/a$c;-><init>(B)V

    .line 2445
    sput-object v0, Lcom/avast/c/a/a/a$c;->f:Lcom/avast/c/a/a/a$c;

    invoke-direct {v0}, Lcom/avast/c/a/a/a$c;->e()V

    .line 2446
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1917
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/a/g;-><init>(B)V

    .line 2063
    iput-byte v1, p0, Lcom/avast/c/a/a/a$c;->g:B

    .line 2086
    iput v1, p0, Lcom/avast/c/a/a/a$c;->h:I

    .line 1919
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1920
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 2063
    iput-byte v0, p0, Lcom/avast/c/a/a/a$c;->g:B

    .line 2086
    iput v0, p0, Lcom/avast/c/a/a/a$c;->h:I

    .line 1920
    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0

    .prologue
    .line 1912
    invoke-direct {p0}, Lcom/avast/c/a/a/a$c;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/a/d;Lcom/google/a/f;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v4, 0x1

    .line 1934
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 2063
    iput-byte v0, p0, Lcom/avast/c/a/a/a$c;->g:B

    .line 2086
    iput v0, p0, Lcom/avast/c/a/a/a$c;->h:I

    .line 1935
    invoke-direct {p0}, Lcom/avast/c/a/a/a$c;->e()V

    .line 1938
    const/4 v0, 0x0

    move v3, v0

    .line 1939
    :cond_0
    :goto_0
    if-nez v3, :cond_3

    .line 1940
    :try_start_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 1941
    sparse-switch v0, :sswitch_data_0

    .line 3071
    invoke-virtual {p1, v0}, Lcom/google/a/d;->b(I)Z

    move-result v0

    .line 1946
    if-nez v0, :cond_0

    move v3, v4

    .line 1948
    goto :goto_0

    :sswitch_0
    move v3, v4

    .line 1944
    goto :goto_0

    .line 1954
    :sswitch_1
    iget v0, p0, Lcom/avast/c/a/a/a$c;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_5

    .line 1955
    iget-object v0, p0, Lcom/avast/c/a/a/a$c;->c:Lcom/avast/c/a/a/a$g;

    .line 3722
    invoke-static {v0}, Lcom/avast/c/a/a/a$g;->a(Lcom/avast/c/a/a/a$g;)Lcom/avast/c/a/a/a$g$a;

    move-result-object v0

    move-object v1, v0

    .line 1957
    :goto_1
    sget-object v0, Lcom/avast/c/a/a/a$g;->a:Lcom/google/a/n;

    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/n;Lcom/google/a/f;)Lcom/google/a/l;

    move-result-object v0

    check-cast v0, Lcom/avast/c/a/a/a$g;

    iput-object v0, p0, Lcom/avast/c/a/a/a$c;->c:Lcom/avast/c/a/a/a$g;

    .line 1958
    if-eqz v1, :cond_1

    .line 1959
    iget-object v0, p0, Lcom/avast/c/a/a/a$c;->c:Lcom/avast/c/a/a/a$g;

    invoke-virtual {v1, v0}, Lcom/avast/c/a/a/a$g$a;->a(Lcom/avast/c/a/a/a$g;)Lcom/avast/c/a/a/a$g$a;

    .line 1960
    invoke-virtual {v1}, Lcom/avast/c/a/a/a$g$a;->a()Lcom/avast/c/a/a/a$g;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/c/a/a/a$c;->c:Lcom/avast/c/a/a/a$g;

    .line 1962
    :cond_1
    iget v0, p0, Lcom/avast/c/a/a/a$c;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/c/a/a/a$c;->b:I
    :try_end_0
    .catch Lcom/google/a/i; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1986
    :catch_0
    move-exception v0

    .line 4057
    :try_start_1
    iput-object p0, v0, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 1986
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1991
    :catchall_0
    move-exception v0

    throw v0

    .line 1967
    :sswitch_2
    :try_start_2
    iget v0, p0, Lcom/avast/c/a/a/a$c;->b:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1968
    iget-object v0, p0, Lcom/avast/c/a/a/a$c;->d:Lcom/avast/c/a/a/a$a;

    .line 3819
    invoke-static {v0}, Lcom/avast/c/a/a/a$a;->a(Lcom/avast/c/a/a/a$a;)Lcom/avast/c/a/a/a$a$b;

    move-result-object v0

    move-object v1, v0

    .line 1970
    :goto_2
    sget-object v0, Lcom/avast/c/a/a/a$a;->a:Lcom/google/a/n;

    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/n;Lcom/google/a/f;)Lcom/google/a/l;

    move-result-object v0

    check-cast v0, Lcom/avast/c/a/a/a$a;

    iput-object v0, p0, Lcom/avast/c/a/a/a$c;->d:Lcom/avast/c/a/a/a$a;

    .line 1971
    if-eqz v1, :cond_2

    .line 1972
    iget-object v0, p0, Lcom/avast/c/a/a/a$c;->d:Lcom/avast/c/a/a/a$a;

    invoke-virtual {v1, v0}, Lcom/avast/c/a/a/a$a$b;->a(Lcom/avast/c/a/a/a$a;)Lcom/avast/c/a/a/a$a$b;

    .line 1973
    invoke-virtual {v1}, Lcom/avast/c/a/a/a$a$b;->a()Lcom/avast/c/a/a/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/c/a/a/a$c;->d:Lcom/avast/c/a/a/a$a;

    .line 1975
    :cond_2
    iget v0, p0, Lcom/avast/c/a/a/a$c;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/c/a/a/a$c;->b:I
    :try_end_2
    .catch Lcom/google/a/i; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1987
    :catch_1
    move-exception v0

    .line 1988
    :try_start_3
    new-instance v1, Lcom/google/a/i;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/a/i;-><init>(Ljava/lang/String;)V

    .line 5057
    iput-object p0, v1, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 1988
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1979
    :sswitch_3
    :try_start_4
    iget v0, p0, Lcom/avast/c/a/a/a$c;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/c/a/a/a$c;->b:I

    .line 1980
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/c/a/a/a$c;->e:Lcom/google/a/c;
    :try_end_4
    .catch Lcom/google/a/i; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1992
    :cond_3
    return-void

    :cond_4
    move-object v1, v2

    goto :goto_2

    :cond_5
    move-object v1, v2

    goto :goto_1

    .line 1941
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 1912
    invoke-direct {p0, p1, p2}, Lcom/avast/c/a/a/a$c;-><init>(Lcom/google/a/d;Lcom/google/a/f;)V

    return-void
.end method

.method static synthetic a(Lcom/avast/c/a/a/a$c;I)I
    .locals 0

    .prologue
    .line 1912
    iput p1, p0, Lcom/avast/c/a/a/a$c;->b:I

    return p1
.end method

.method static synthetic a(Lcom/avast/c/a/a/a$c;Lcom/avast/c/a/a/a$a;)Lcom/avast/c/a/a/a$a;
    .locals 0

    .prologue
    .line 1912
    iput-object p1, p0, Lcom/avast/c/a/a/a$c;->d:Lcom/avast/c/a/a/a$a;

    return-object p1
.end method

.method public static a()Lcom/avast/c/a/a/a$c;
    .locals 1

    .prologue
    .line 1924
    sget-object v0, Lcom/avast/c/a/a/a$c;->f:Lcom/avast/c/a/a/a$c;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/c/a/a/a$c;Lcom/avast/c/a/a/a$g;)Lcom/avast/c/a/a/a$g;
    .locals 0

    .prologue
    .line 1912
    iput-object p1, p0, Lcom/avast/c/a/a/a$c;->c:Lcom/avast/c/a/a/a$g;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/c/a/a/a$c;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0

    .prologue
    .line 1912
    iput-object p1, p0, Lcom/avast/c/a/a/a$c;->e:Lcom/google/a/c;

    return-object p1
.end method

.method public static d()Lcom/avast/c/a/a/a$c$a;
    .locals 1

    .prologue
    .line 2168
    invoke-static {}, Lcom/avast/c/a/a/a$c$a;->e()Lcom/avast/c/a/a/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 2059
    invoke-static {}, Lcom/avast/c/a/a/a$g;->a()Lcom/avast/c/a/a/a$g;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/c/a/a/a$c;->c:Lcom/avast/c/a/a/a$g;

    .line 2060
    invoke-static {}, Lcom/avast/c/a/a/a$a;->a()Lcom/avast/c/a/a/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/c/a/a/a$c;->d:Lcom/avast/c/a/a/a$a;

    .line 2061
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/c/a/a/a$c;->e:Lcom/google/a/c;

    .line 2062
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2074
    invoke-virtual {p0}, Lcom/avast/c/a/a/a$c;->c()I

    .line 2075
    iget v0, p0, Lcom/avast/c/a/a/a$c;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2076
    iget-object v0, p0, Lcom/avast/c/a/a/a$c;->c:Lcom/avast/c/a/a/a$g;

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/l;)V

    .line 2078
    :cond_0
    iget v0, p0, Lcom/avast/c/a/a/a$c;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2079
    iget-object v0, p0, Lcom/avast/c/a/a/a$c;->d:Lcom/avast/c/a/a/a$a;

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->a(ILcom/google/a/l;)V

    .line 2081
    :cond_1
    iget v0, p0, Lcom/avast/c/a/a/a$c;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 2082
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/avast/c/a/a/a$c;->e:Lcom/google/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 2084
    :cond_2
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2065
    iget-byte v1, p0, Lcom/avast/c/a/a/a$c;->g:B

    .line 2066
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 2069
    :goto_0
    return v0

    .line 2066
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2068
    :cond_1
    iput-byte v0, p0, Lcom/avast/c/a/a/a$c;->g:B

    goto :goto_0
.end method

.method public final c()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2088
    iget v0, p0, Lcom/avast/c/a/a/a$c;->h:I

    .line 2089
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2105
    :goto_0
    return v0

    .line 2091
    :cond_0
    const/4 v0, 0x0

    .line 2092
    iget v1, p0, Lcom/avast/c/a/a/a$c;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 2093
    iget-object v0, p0, Lcom/avast/c/a/a/a$c;->c:Lcom/avast/c/a/a/a$g;

    invoke-static {v2, v0}, Lcom/google/a/e;->b(ILcom/google/a/l;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 2096
    :cond_1
    iget v1, p0, Lcom/avast/c/a/a/a$c;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 2097
    iget-object v1, p0, Lcom/avast/c/a/a/a$c;->d:Lcom/avast/c/a/a/a$a;

    invoke-static {v3, v1}, Lcom/google/a/e;->b(ILcom/google/a/l;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2100
    :cond_2
    iget v1, p0, Lcom/avast/c/a/a/a$c;->b:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 2101
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/avast/c/a/a/a$c;->e:Lcom/google/a/c;

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2104
    :cond_3
    iput v0, p0, Lcom/avast/c/a/a/a$c;->h:I

    goto :goto_0
.end method
