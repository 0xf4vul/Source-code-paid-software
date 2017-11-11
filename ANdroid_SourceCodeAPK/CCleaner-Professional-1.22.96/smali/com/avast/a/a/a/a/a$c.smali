.class public final Lcom/avast/a/a/a/a/a$c;
.super Lcom/google/a/g;
.source "SourceFile"

# interfaces
.implements Lcom/avast/a/a/a/a/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avast/a/a/a/a/a$c$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/a/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/n",
            "<",
            "Lcom/avast/a/a/a/a/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/avast/a/a/a/a/a$c;


# instance fields
.field b:I

.field public c:Lcom/avast/a/a/a/a/a$a;

.field private e:B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/avast/a/a/a/a/a$c$1;

    invoke-direct {v0}, Lcom/avast/a/a/a/a/a$c$1;-><init>()V

    sput-object v0, Lcom/avast/a/a/a/a/a$c;->a:Lcom/google/a/n;

    .line 373
    new-instance v0, Lcom/avast/a/a/a/a/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/avast/a/a/a/a/a$c;-><init>(B)V

    .line 374
    sput-object v0, Lcom/avast/a/a/a/a/a$c;->d:Lcom/avast/a/a/a/a/a$c;

    .line 4124
    invoke-static {}, Lcom/avast/a/a/a/a/a$a;->a()Lcom/avast/a/a/a/a/a$a;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/a/a/a/a/a$c;->c:Lcom/avast/a/a/a/a/a$a;

    .line 375
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/a/g;-><init>(B)V

    .line 126
    iput-byte v1, p0, Lcom/avast/a/a/a/a/a$c;->e:B

    .line 143
    iput v1, p0, Lcom/avast/a/a/a/a/a$c;->f:I

    .line 34
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 35
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 126
    iput-byte v0, p0, Lcom/avast/a/a/a/a/a$c;->e:B

    .line 143
    iput v0, p0, Lcom/avast/a/a/a/a/a$c;->f:I

    .line 35
    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/avast/a/a/a/a/a$c;-><init>()V

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

    .line 49
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 126
    iput-byte v0, p0, Lcom/avast/a/a/a/a/a$c;->e:B

    .line 143
    iput v0, p0, Lcom/avast/a/a/a/a/a$c;->f:I

    .line 1124
    invoke-static {}, Lcom/avast/a/a/a/a/a$a;->a()Lcom/avast/a/a/a/a/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/a$c;->c:Lcom/avast/a/a/a/a/a$a;

    .line 53
    const/4 v0, 0x0

    move v2, v0

    .line 54
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    .line 55
    :try_start_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 56
    sparse-switch v0, :sswitch_data_0

    .line 2071
    invoke-virtual {p1, v0}, Lcom/google/a/d;->b(I)Z

    move-result v0

    .line 61
    if-nez v0, :cond_0

    move v2, v3

    .line 63
    goto :goto_0

    :sswitch_0
    move v2, v3

    .line 59
    goto :goto_0

    .line 68
    :sswitch_1
    const/4 v0, 0x0

    .line 69
    iget v1, p0, Lcom/avast/a/a/a/a/a$c;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_3

    .line 70
    iget-object v0, p0, Lcom/avast/a/a/a/a/a$c;->c:Lcom/avast/a/a/a/a/a$a;

    .line 2709
    invoke-static {v0}, Lcom/avast/a/a/a/a/a$a;->a(Lcom/avast/a/a/a/a/a$a;)Lcom/avast/a/a/a/a/a$a$a;

    move-result-object v0

    move-object v1, v0

    .line 72
    :goto_1
    sget-object v0, Lcom/avast/a/a/a/a/a$a;->a:Lcom/google/a/n;

    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/n;Lcom/google/a/f;)Lcom/google/a/l;

    move-result-object v0

    check-cast v0, Lcom/avast/a/a/a/a/a$a;

    iput-object v0, p0, Lcom/avast/a/a/a/a/a$c;->c:Lcom/avast/a/a/a/a/a$a;

    .line 73
    if-eqz v1, :cond_1

    .line 74
    iget-object v0, p0, Lcom/avast/a/a/a/a/a$c;->c:Lcom/avast/a/a/a/a/a$a;

    invoke-virtual {v1, v0}, Lcom/avast/a/a/a/a/a$a$a;->a(Lcom/avast/a/a/a/a/a$a;)Lcom/avast/a/a/a/a/a$a$a;

    .line 75
    invoke-virtual {v1}, Lcom/avast/a/a/a/a/a$a$a;->a()Lcom/avast/a/a/a/a/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/a$c;->c:Lcom/avast/a/a/a/a/a$a;

    .line 77
    :cond_1
    iget v0, p0, Lcom/avast/a/a/a/a/a$c;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/a/a/a/a$c;->b:I
    :try_end_0
    .catch Lcom/google/a/i; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 3057
    :try_start_1
    iput-object p0, v0, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 83
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :catchall_0
    move-exception v0

    throw v0

    .line 84
    :catch_1
    move-exception v0

    .line 85
    :try_start_2
    new-instance v1, Lcom/google/a/i;

    .line 86
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/a/i;-><init>(Ljava/lang/String;)V

    .line 4057
    iput-object p0, v1, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 86
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    :cond_2
    return-void

    :cond_3
    move-object v1, v0

    goto :goto_1

    .line 56
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/avast/a/a/a/a/a$c;-><init>(Lcom/google/a/d;Lcom/google/a/f;)V

    return-void
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/a$c;I)I
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/avast/a/a/a/a/a$c;->b:I

    return p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/a$c;Lcom/avast/a/a/a/a/a$a;)Lcom/avast/a/a/a/a/a$a;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/avast/a/a/a/a/a$c;->c:Lcom/avast/a/a/a/a/a$a;

    return-object p1
.end method

.method public static a()Lcom/avast/a/a/a/a/a$c;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/avast/a/a/a/a/a$c;->d:Lcom/avast/a/a/a/a/a$c;

    return-object v0
.end method

.method public static a(Lcom/google/a/c;)Lcom/avast/a/a/a/a/a$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    .line 167
    sget-object v0, Lcom/avast/a/a/a/a/a$c;->a:Lcom/google/a/n;

    invoke-interface {v0, p0}, Lcom/google/a/n;->a(Lcom/google/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/a/a/a/a$c;

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

    .line 137
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/a$c;->c()I

    .line 138
    iget v0, p0, Lcom/avast/a/a/a/a/a$c;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/avast/a/a/a/a/a$c;->c:Lcom/avast/a/a/a/a/a$a;

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/l;)V

    .line 141
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 128
    iget-byte v1, p0, Lcom/avast/a/a/a/a/a$c;->e:B

    .line 129
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 132
    :goto_0
    return v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 131
    :cond_1
    iput-byte v0, p0, Lcom/avast/a/a/a/a/a$c;->e:B

    goto :goto_0
.end method

.method public final c()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 145
    iget v0, p0, Lcom/avast/a/a/a/a/a$c;->f:I

    .line 146
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 154
    :goto_0
    return v0

    .line 148
    :cond_0
    const/4 v0, 0x0

    .line 149
    iget v1, p0, Lcom/avast/a/a/a/a/a$c;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 150
    iget-object v0, p0, Lcom/avast/a/a/a/a/a$c;->c:Lcom/avast/a/a/a/a/a$a;

    .line 151
    invoke-static {v2, v0}, Lcom/google/a/e;->b(ILcom/google/a/l;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 153
    :cond_1
    iput v0, p0, Lcom/avast/a/a/a/a/a$c;->f:I

    goto :goto_0
.end method
