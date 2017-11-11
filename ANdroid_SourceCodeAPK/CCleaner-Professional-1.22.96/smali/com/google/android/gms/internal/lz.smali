.class public final Lcom/google/android/gms/internal/lz;
.super Lcom/google/android/gms/internal/ll;


# static fields
.field private static final a:Lcom/google/android/gms/internal/lz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/lz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/lz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/lz;->a:Lcom/google/android/gms/internal/lz;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ll;-><init>()V

    return-void
.end method

.method public static d()Lcom/google/android/gms/internal/lz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/lz;->a:Lcom/google/android/gms/internal/lz;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lr;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/lr;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/lr;-><init>(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ls;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcom/google/android/gms/internal/lr;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/lr;

    invoke-static {}, Lcom/google/android/gms/internal/lf;->b()Lcom/google/android/gms/internal/lf;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ls;->e:Lcom/google/android/gms/internal/lg;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/lr;-><init>(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)V

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ".value"

    return-object v0
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/lr;

    check-cast p2, Lcom/google/android/gms/internal/lr;

    .line 2000
    iget-object v0, p1, Lcom/google/android/gms/internal/lr;->b:Lcom/google/android/gms/internal/ls;

    .line 3000
    iget-object v1, p2, Lcom/google/android/gms/internal/lr;->b:Lcom/google/android/gms/internal/ls;

    .line 1000
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ls;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4000
    iget-object v0, p1, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 5000
    iget-object v1, p2, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 1000
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lf;->a(Lcom/google/android/gms/internal/lf;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/lz;

    return v0
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ValueIndex"

    return-object v0
.end method
