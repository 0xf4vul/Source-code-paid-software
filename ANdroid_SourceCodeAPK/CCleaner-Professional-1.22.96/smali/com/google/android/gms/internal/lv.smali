.class public final Lcom/google/android/gms/internal/lv;
.super Lcom/google/android/gms/internal/ll;


# static fields
.field private static final a:Lcom/google/android/gms/internal/lv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/lv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/lv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/lv;->a:Lcom/google/android/gms/internal/lv;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ll;-><init>()V

    return-void
.end method

.method public static d()Lcom/google/android/gms/internal/lv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/lv;->a:Lcom/google/android/gms/internal/lv;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lr;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/lr;

    new-instance v1, Lcom/google/android/gms/internal/ly;

    const-string/jumbo v2, "[PRIORITY-POST]"

    invoke-direct {v1, v2, p2}, Lcom/google/android/gms/internal/ly;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ls;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/lr;-><init>(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ls;)Z
    .locals 1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ls;->f()Lcom/google/android/gms/internal/ls;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/google/android/gms/internal/lr;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/lf;->b()Lcom/google/android/gms/internal/lf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ls;->e:Lcom/google/android/gms/internal/lg;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lv;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lr;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t get query definition on priority index!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/lr;

    check-cast p2, Lcom/google/android/gms/internal/lr;

    .line 2000
    iget-object v0, p1, Lcom/google/android/gms/internal/lr;->b:Lcom/google/android/gms/internal/ls;

    .line 1000
    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->f()Lcom/google/android/gms/internal/ls;

    move-result-object v0

    .line 3000
    iget-object v1, p2, Lcom/google/android/gms/internal/lr;->b:Lcom/google/android/gms/internal/ls;

    .line 1000
    invoke-interface {v1}, Lcom/google/android/gms/internal/ls;->f()Lcom/google/android/gms/internal/ls;

    move-result-object v1

    .line 4000
    iget-object v2, p1, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 5000
    iget-object v3, p2, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 6000
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ls;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/lf;->a(Lcom/google/android/gms/internal/lf;)I

    move-result v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/lv;

    return v0
.end method

.method public final hashCode()I
    .locals 1

    const v0, 0x302679

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "PriorityIndex"

    return-object v0
.end method
