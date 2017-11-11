.class public final Lcom/avast/a/b/a/a$o;
.super Lcom/google/a/g;
.source "SourceFile"

# interfaces
.implements Lcom/avast/a/b/a/a$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/a/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avast/a/b/a/a$o$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/a/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/n",
            "<",
            "Lcom/avast/a/b/a/a$o;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lcom/avast/a/b/a/a$o;


# instance fields
.field b:I

.field c:I

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avast/a/b/a/a$g;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/avast/a/b/a/a$i;

.field public f:Lcom/avast/a/b/a/a$m;

.field public g:Lcom/avast/a/b/a/a$a;

.field private i:B

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 966
    new-instance v0, Lcom/avast/a/b/a/a$o$1;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$o$1;-><init>()V

    sput-object v0, Lcom/avast/a/b/a/a$o;->a:Lcom/google/a/n;

    .line 1881
    new-instance v0, Lcom/avast/a/b/a/a$o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/avast/a/b/a/a$o;-><init>(B)V

    .line 1882
    sput-object v0, Lcom/avast/a/b/a/a$o;->h:Lcom/avast/a/b/a/a$o;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$o;->g()V

    .line 1883
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 865
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/a/g;-><init>(B)V

    .line 1141
    iput-byte v1, p0, Lcom/avast/a/b/a/a$o;->i:B

    .line 1170
    iput v1, p0, Lcom/avast/a/b/a/a$o;->j:I

    .line 867
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 868
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 1141
    iput-byte v0, p0, Lcom/avast/a/b/a/a$o;->i:B

    .line 1170
    iput v0, p0, Lcom/avast/a/b/a/a$o;->j:I

    .line 868
    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0

    .prologue
    .line 860
    invoke-direct {p0}, Lcom/avast/a/b/a/a$o;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/a/d;Lcom/google/a/f;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x2

    .line 882
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 1141
    iput-byte v1, p0, Lcom/avast/a/b/a/a$o;->i:B

    .line 1170
    iput v1, p0, Lcom/avast/a/b/a/a$o;->j:I

    .line 883
    invoke-direct {p0}, Lcom/avast/a/b/a/a$o;->g()V

    move v4, v0

    move v1, v0

    .line 887
    :cond_0
    :goto_0
    if-nez v4, :cond_6

    .line 888
    :try_start_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 889
    sparse-switch v0, :sswitch_data_0

    .line 8071
    invoke-virtual {p1, v0}, Lcom/google/a/d;->b(I)Z

    move-result v0

    .line 894
    if-nez v0, :cond_0

    move v4, v5

    .line 896
    goto :goto_0

    :sswitch_0
    move v4, v5

    .line 892
    goto :goto_0

    .line 902
    :sswitch_1
    iget v0, p0, Lcom/avast/a/b/a/a$o;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v6, :cond_a

    .line 903
    iget-object v0, p0, Lcom/avast/a/b/a/a$o;->e:Lcom/avast/a/b/a/a$i;

    .line 8475
    invoke-static {v0}, Lcom/avast/a/b/a/a$i;->a(Lcom/avast/a/b/a/a$i;)Lcom/avast/a/b/a/a$i$a;

    move-result-object v0

    move-object v2, v0

    .line 905
    :goto_1
    sget-object v0, Lcom/avast/a/b/a/a$i;->a:Lcom/google/a/n;

    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/n;Lcom/google/a/f;)Lcom/google/a/l;

    move-result-object v0

    check-cast v0, Lcom/avast/a/b/a/a$i;

    iput-object v0, p0, Lcom/avast/a/b/a/a$o;->e:Lcom/avast/a/b/a/a$i;

    .line 906
    if-eqz v2, :cond_1

    .line 907
    iget-object v0, p0, Lcom/avast/a/b/a/a$o;->e:Lcom/avast/a/b/a/a$i;

    invoke-virtual {v2, v0}, Lcom/avast/a/b/a/a$i$a;->a(Lcom/avast/a/b/a/a$i;)Lcom/avast/a/b/a/a$i$a;

    .line 908
    invoke-virtual {v2}, Lcom/avast/a/b/a/a$i$a;->a()Lcom/avast/a/b/a/a$i;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$o;->e:Lcom/avast/a/b/a/a$i;

    .line 910
    :cond_1
    iget v0, p0, Lcom/avast/a/b/a/a$o;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/a/b/a/a$o;->b:I
    :try_end_0
    .catch Lcom/google/a/i; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 955
    :catch_0
    move-exception v0

    .line 9057
    :try_start_1
    iput-object p0, v0, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 955
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 960
    :catchall_0
    move-exception v0

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v6, :cond_2

    .line 961
    iget-object v1, p0, Lcom/avast/a/b/a/a$o;->d:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/a/b/a/a$o;->d:Ljava/util/List;

    .line 963
    :cond_2
    throw v0

    .line 914
    :sswitch_2
    and-int/lit8 v0, v1, 0x2

    if-eq v0, v6, :cond_3

    .line 915
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avast/a/b/a/a$o;->d:Ljava/util/List;

    .line 916
    or-int/lit8 v1, v1, 0x2

    .line 918
    :cond_3
    iget-object v0, p0, Lcom/avast/a/b/a/a$o;->d:Ljava/util/List;

    sget-object v2, Lcom/avast/a/b/a/a$g;->a:Lcom/google/a/n;

    invoke-virtual {p1, v2, p2}, Lcom/google/a/d;->a(Lcom/google/a/n;Lcom/google/a/f;)Lcom/google/a/l;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/google/a/i; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 956
    :catch_1
    move-exception v0

    .line 957
    :try_start_3
    new-instance v2, Lcom/google/a/i;

    .line 958
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/a/i;-><init>(Ljava/lang/String;)V

    .line 10057
    iput-object p0, v2, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 958
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 923
    :sswitch_3
    :try_start_4
    iget v0, p0, Lcom/avast/a/b/a/a$o;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_9

    .line 924
    iget-object v0, p0, Lcom/avast/a/b/a/a$o;->f:Lcom/avast/a/b/a/a$m;

    .line 8862
    invoke-static {v0}, Lcom/avast/a/b/a/a$m;->a(Lcom/avast/a/b/a/a$m;)Lcom/avast/a/b/a/a$m$a;

    move-result-object v0

    move-object v2, v0

    .line 926
    :goto_2
    sget-object v0, Lcom/avast/a/b/a/a$m;->a:Lcom/google/a/n;

    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/n;Lcom/google/a/f;)Lcom/google/a/l;

    move-result-object v0

    check-cast v0, Lcom/avast/a/b/a/a$m;

    iput-object v0, p0, Lcom/avast/a/b/a/a$o;->f:Lcom/avast/a/b/a/a$m;

    .line 927
    if-eqz v2, :cond_4

    .line 928
    iget-object v0, p0, Lcom/avast/a/b/a/a$o;->f:Lcom/avast/a/b/a/a$m;

    invoke-virtual {v2, v0}, Lcom/avast/a/b/a/a$m$a;->a(Lcom/avast/a/b/a/a$m;)Lcom/avast/a/b/a/a$m$a;

    .line 929
    invoke-virtual {v2}, Lcom/avast/a/b/a/a$m$a;->a()Lcom/avast/a/b/a/a$m;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$o;->f:Lcom/avast/a/b/a/a$m;

    .line 931
    :cond_4
    iget v0, p0, Lcom/avast/a/b/a/a$o;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/a/b/a/a$o;->b:I

    goto/16 :goto_0

    .line 935
    :sswitch_4
    iget v0, p0, Lcom/avast/a/b/a/a$o;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/b/a/a$o;->b:I

    .line 936
    invoke-virtual {p1}, Lcom/google/a/d;->b()I

    move-result v0

    iput v0, p0, Lcom/avast/a/b/a/a$o;->c:I

    goto/16 :goto_0

    .line 941
    :sswitch_5
    iget v0, p0, Lcom/avast/a/b/a/a$o;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v2, 0x8

    if-ne v0, v2, :cond_8

    .line 942
    iget-object v0, p0, Lcom/avast/a/b/a/a$o;->g:Lcom/avast/a/b/a/a$a;

    invoke-virtual {v0}, Lcom/avast/a/b/a/a$a;->e()Lcom/avast/a/b/a/a$a$a;

    move-result-object v0

    move-object v2, v0

    .line 944
    :goto_3
    sget-object v0, Lcom/avast/a/b/a/a$a;->a:Lcom/google/a/n;

    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/n;Lcom/google/a/f;)Lcom/google/a/l;

    move-result-object v0

    check-cast v0, Lcom/avast/a/b/a/a$a;

    iput-object v0, p0, Lcom/avast/a/b/a/a$o;->g:Lcom/avast/a/b/a/a$a;

    .line 945
    if-eqz v2, :cond_5

    .line 946
    iget-object v0, p0, Lcom/avast/a/b/a/a$o;->g:Lcom/avast/a/b/a/a$a;

    invoke-virtual {v2, v0}, Lcom/avast/a/b/a/a$a$a;->a(Lcom/avast/a/b/a/a$a;)Lcom/avast/a/b/a/a$a$a;

    .line 947
    invoke-virtual {v2}, Lcom/avast/a/b/a/a$a$a;->e()Lcom/avast/a/b/a/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$o;->g:Lcom/avast/a/b/a/a$a;

    .line 949
    :cond_5
    iget v0, p0, Lcom/avast/a/b/a/a$o;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/a/b/a/a$o;->b:I
    :try_end_4
    .catch Lcom/google/a/i; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 960
    :cond_6
    and-int/lit8 v0, v1, 0x2

    if-ne v0, v6, :cond_7

    .line 961
    iget-object v0, p0, Lcom/avast/a/b/a/a$o;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$o;->d:Ljava/util/List;

    .line 964
    :cond_7
    return-void

    :cond_8
    move-object v2, v3

    goto :goto_3

    :cond_9
    move-object v2, v3

    goto :goto_2

    :cond_a
    move-object v2, v3

    goto/16 :goto_1

    .line 889
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x22 -> :sswitch_3
        0x40 -> :sswitch_4
        0x52 -> :sswitch_5
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
    .line 860
    invoke-direct {p0, p1, p2}, Lcom/avast/a/b/a/a$o;-><init>(Lcom/google/a/d;Lcom/google/a/f;)V

    return-void
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$o;I)I
    .locals 0

    .prologue
    .line 860
    iput p1, p0, Lcom/avast/a/b/a/a$o;->c:I

    return p1
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$o;Lcom/avast/a/b/a/a$a;)Lcom/avast/a/b/a/a$a;
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lcom/avast/a/b/a/a$o;->g:Lcom/avast/a/b/a/a$a;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$o;Lcom/avast/a/b/a/a$i;)Lcom/avast/a/b/a/a$i;
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lcom/avast/a/b/a/a$o;->e:Lcom/avast/a/b/a/a$i;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$o;Lcom/avast/a/b/a/a$m;)Lcom/avast/a/b/a/a$m;
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lcom/avast/a/b/a/a$o;->f:Lcom/avast/a/b/a/a$m;

    return-object p1
.end method

.method public static a()Lcom/avast/a/b/a/a$o;
    .locals 1

    .prologue
    .line 872
    sget-object v0, Lcom/avast/a/b/a/a$o;->h:Lcom/avast/a/b/a/a$o;

    return-object v0
.end method

.method public static a([B)Lcom/avast/a/b/a/a$o;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    .line 1220
    sget-object v0, Lcom/avast/a/b/a/a$o;->a:Lcom/google/a/n;

    invoke-interface {v0, p0}, Lcom/google/a/n;->a([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/b/a/a$o;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$o;)Ljava/util/List;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/avast/a/b/a/a$o;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$o;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lcom/avast/a/b/a/a$o;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/a/b/a/a$o;I)I
    .locals 0

    .prologue
    .line 860
    iput p1, p0, Lcom/avast/a/b/a/a$o;->b:I

    return p1
.end method

.method public static e()Lcom/avast/a/b/a/a$o$a;
    .locals 1

    .prologue
    .line 1260
    invoke-static {}, Lcom/avast/a/b/a/a$o$a;->f()Lcom/avast/a/b/a/a$o$a;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 1135
    const/4 v0, 0x0

    iput v0, p0, Lcom/avast/a/b/a/a$o;->c:I

    .line 1136
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$o;->d:Ljava/util/List;

    .line 1137
    invoke-static {}, Lcom/avast/a/b/a/a$i;->a()Lcom/avast/a/b/a/a$i;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$o;->e:Lcom/avast/a/b/a/a$i;

    .line 1138
    invoke-static {}, Lcom/avast/a/b/a/a$m;->a()Lcom/avast/a/b/a/a$m;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$o;->f:Lcom/avast/a/b/a/a$m;

    .line 1139
    invoke-static {}, Lcom/avast/a/b/a/a$a;->a()Lcom/avast/a/b/a/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$o;->g:Lcom/avast/a/b/a/a$a;

    .line 1140
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/e;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1152
    invoke-virtual {p0}, Lcom/avast/a/b/a/a$o;->c()I

    .line 1153
    iget v0, p0, Lcom/avast/a/b/a/a$o;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/avast/a/b/a/a$o;->e:Lcom/avast/a/b/a/a$i;

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->a(ILcom/google/a/l;)V

    .line 1156
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/avast/a/b/a/a$o;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1157
    iget-object v0, p0, Lcom/avast/a/b/a/a$o;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/l;

    invoke-virtual {p1, v3, v0}, Lcom/google/a/e;->a(ILcom/google/a/l;)V

    .line 1156
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1159
    :cond_1
    iget v0, p0, Lcom/avast/a/b/a/a$o;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 1160
    iget-object v0, p0, Lcom/avast/a/b/a/a$o;->f:Lcom/avast/a/b/a/a$m;

    invoke-virtual {p1, v4, v0}, Lcom/google/a/e;->a(ILcom/google/a/l;)V

    .line 1162
    :cond_2
    iget v0, p0, Lcom/avast/a/b/a/a$o;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_3

    .line 1163
    iget v0, p0, Lcom/avast/a/b/a/a$o;->c:I

    invoke-virtual {p1, v5, v0}, Lcom/google/a/e;->a(II)V

    .line 1165
    :cond_3
    iget v0, p0, Lcom/avast/a/b/a/a$o;->b:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_4

    .line 1166
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/avast/a/b/a/a$o;->g:Lcom/avast/a/b/a/a$a;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/l;)V

    .line 1168
    :cond_4
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1143
    iget-byte v1, p0, Lcom/avast/a/b/a/a$o;->i:B

    .line 1144
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 1147
    :goto_0
    return v0

    .line 1144
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1146
    :cond_1
    iput-byte v0, p0, Lcom/avast/a/b/a/a$o;->i:B

    goto :goto_0
.end method

.method public final c()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1172
    iget v2, p0, Lcom/avast/a/b/a/a$o;->j:I

    .line 1173
    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    .line 1197
    :goto_0
    return v2

    .line 1176
    :cond_0
    iget v0, p0, Lcom/avast/a/b/a/a$o;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_5

    .line 1177
    iget-object v0, p0, Lcom/avast/a/b/a/a$o;->e:Lcom/avast/a/b/a/a$i;

    .line 1178
    invoke-static {v3, v0}, Lcom/google/a/e;->b(ILcom/google/a/l;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_1
    move v2, v0

    .line 1180
    :goto_2
    iget-object v0, p0, Lcom/avast/a/b/a/a$o;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1181
    iget-object v0, p0, Lcom/avast/a/b/a/a$o;->d:Ljava/util/List;

    .line 1182
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/l;

    invoke-static {v4, v0}, Lcom/google/a/e;->b(ILcom/google/a/l;)I

    move-result v0

    add-int/2addr v0, v2

    .line 1180
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 1184
    :cond_1
    iget v0, p0, Lcom/avast/a/b/a/a$o;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v5, :cond_2

    .line 1185
    iget-object v0, p0, Lcom/avast/a/b/a/a$o;->f:Lcom/avast/a/b/a/a$m;

    .line 1186
    invoke-static {v5, v0}, Lcom/google/a/e;->b(ILcom/google/a/l;)I

    move-result v0

    add-int/2addr v2, v0

    .line 1188
    :cond_2
    iget v0, p0, Lcom/avast/a/b/a/a$o;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_3

    .line 1189
    iget v0, p0, Lcom/avast/a/b/a/a$o;->c:I

    .line 1190
    invoke-static {v6, v0}, Lcom/google/a/e;->d(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 1192
    :cond_3
    iget v0, p0, Lcom/avast/a/b/a/a$o;->b:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v6, :cond_4

    .line 1193
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/avast/a/b/a/a$o;->g:Lcom/avast/a/b/a/a$a;

    .line 1194
    invoke-static {v0, v1}, Lcom/google/a/e;->b(ILcom/google/a/l;)I

    move-result v0

    add-int/2addr v2, v0

    .line 1196
    :cond_4
    iput v2, p0, Lcom/avast/a/b/a/a$o;->j:I

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/avast/a/b/a/a$o;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final f()Lcom/avast/a/b/a/a$o$a;
    .locals 1

    .prologue
    .line 1265
    .line 11260
    invoke-static {}, Lcom/avast/a/b/a/a$o$a;->f()Lcom/avast/a/b/a/a$o$a;

    move-result-object v0

    .line 10263
    invoke-virtual {v0, p0}, Lcom/avast/a/b/a/a$o$a;->a(Lcom/avast/a/b/a/a$o;)Lcom/avast/a/b/a/a$o$a;

    move-result-object v0

    .line 1265
    return-object v0
.end method
