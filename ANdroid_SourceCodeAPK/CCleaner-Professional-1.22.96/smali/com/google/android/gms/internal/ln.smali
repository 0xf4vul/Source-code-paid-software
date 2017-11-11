.class public Lcom/google/android/gms/internal/ln;
.super Lcom/google/android/gms/internal/ll;


# static fields
.field static final synthetic a:Z

.field private static final b:Lcom/google/android/gms/internal/ln;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ln;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/ln;->a:Z

    new-instance v0, Lcom/google/android/gms/internal/ln;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ln;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ln;->b:Lcom/google/android/gms/internal/ln;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ll;-><init>()V

    return-void
.end method

.method public static d()Lcom/google/android/gms/internal/ln;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ln;->b:Lcom/google/android/gms/internal/ln;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lr;
    .locals 3

    sget-boolean v0, Lcom/google/android/gms/internal/ln;->a:Z

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/android/gms/internal/ly;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/lr;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ls;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/lf;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/lf;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/lr;-><init>(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)V

    return-object v1
.end method

.method public final a(Lcom/google/android/gms/internal/ls;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcom/google/android/gms/internal/lr;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/lr;->b()Lcom/google/android/gms/internal/lr;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ".key"

    return-object v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/lr;

    check-cast p2, Lcom/google/android/gms/internal/lr;

    .line 2000
    iget-object v0, p1, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 3000
    iget-object v1, p2, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 1000
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lf;->a(Lcom/google/android/gms/internal/lf;)I

    move-result v0

    .line 0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/ln;

    return v0
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "KeyIndex"

    return-object v0
.end method
