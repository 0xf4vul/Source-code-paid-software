.class public Lcom/google/android/gms/internal/jt;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jt$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/internal/jt;

.field public static final b:Lcom/google/android/gms/internal/jt;

.field static final synthetic e:Z


# instance fields
.field final c:Lcom/google/android/gms/internal/kq;

.field final d:Z

.field private final f:Lcom/google/android/gms/internal/jt$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-class v0, Lcom/google/android/gms/internal/jt;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/jt;->e:Z

    new-instance v0, Lcom/google/android/gms/internal/jt;

    sget-object v2, Lcom/google/android/gms/internal/jt$a;->a:Lcom/google/android/gms/internal/jt$a;

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/jt;-><init>(Lcom/google/android/gms/internal/jt$a;Lcom/google/android/gms/internal/kq;Z)V

    sput-object v0, Lcom/google/android/gms/internal/jt;->a:Lcom/google/android/gms/internal/jt;

    new-instance v0, Lcom/google/android/gms/internal/jt;

    sget-object v2, Lcom/google/android/gms/internal/jt$a;->b:Lcom/google/android/gms/internal/jt$a;

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/jt;-><init>(Lcom/google/android/gms/internal/jt$a;Lcom/google/android/gms/internal/kq;Z)V

    sput-object v0, Lcom/google/android/gms/internal/jt;->b:Lcom/google/android/gms/internal/jt;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/jt$a;Lcom/google/android/gms/internal/kq;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jt;->f:Lcom/google/android/gms/internal/jt$a;

    iput-object p2, p0, Lcom/google/android/gms/internal/jt;->c:Lcom/google/android/gms/internal/kq;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/jt;->d:Z

    sget-boolean v0, Lcom/google/android/gms/internal/jt;->e:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jt;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/kq;)Lcom/google/android/gms/internal/jt;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/jt;

    sget-object v1, Lcom/google/android/gms/internal/jt$a;->b:Lcom/google/android/gms/internal/jt$a;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/jt;-><init>(Lcom/google/android/gms/internal/jt$a;Lcom/google/android/gms/internal/kq;Z)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jt;->f:Lcom/google/android/gms/internal/jt$a;

    sget-object v1, Lcom/google/android/gms/internal/jt$a;->a:Lcom/google/android/gms/internal/jt$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jt;->f:Lcom/google/android/gms/internal/jt$a;

    sget-object v1, Lcom/google/android/gms/internal/jt$a;->b:Lcom/google/android/gms/internal/jt$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/jt;->f:Lcom/google/android/gms/internal/jt$a;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jt;->c:Lcom/google/android/gms/internal/kq;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/jt;->d:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x34

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "OperationSource{source="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", queryParams="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tagged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
