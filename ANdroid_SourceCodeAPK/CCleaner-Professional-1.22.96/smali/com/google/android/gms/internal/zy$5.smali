.class final Lcom/google/android/gms/internal/zy$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aeg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zy;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/aeh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/aeg$a",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/gms/internal/uu;",
        ">;",
        "Lcom/google/android/gms/internal/us;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Ljava/lang/Integer;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;IIIIZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zy$5;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zy$5;->b:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/internal/zy$5;->c:Ljava/lang/Integer;

    iput p4, p0, Lcom/google/android/gms/internal/zy$5;->d:I

    iput p5, p0, Lcom/google/android/gms/internal/zy$5;->e:I

    iput p6, p0, Lcom/google/android/gms/internal/zy$5;->f:I

    iput p7, p0, Lcom/google/android/gms/internal/zy$5;->g:I

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zy$5;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)Lcom/google/android/gms/internal/us;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/uu;",
            ">;)",
            "Lcom/google/android/gms/internal/us;"
        }
    .end annotation

    const/4 v9, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v9

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/us;

    iget-object v1, p0, Lcom/google/android/gms/internal/zy$5;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zy;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zy$5;->b:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/android/gms/internal/zy$5;->c:Ljava/lang/Integer;

    iget v5, p0, Lcom/google/android/gms/internal/zy$5;->d:I

    if-lez v5, :cond_2

    iget v5, p0, Lcom/google/android/gms/internal/zy$5;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_1
    iget v6, p0, Lcom/google/android/gms/internal/zy$5;->e:I

    iget v7, p0, Lcom/google/android/gms/internal/zy$5;->f:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/google/android/gms/internal/zy$5;->g:I

    iget-boolean v8, p0, Lcom/google/android/gms/internal/zy$5;->h:Z

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/us;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not get attribution icon"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v9

    goto :goto_0

    :cond_2
    move-object v5, v9

    goto :goto_1
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zy$5;->a(Ljava/util/List;)Lcom/google/android/gms/internal/us;

    move-result-object v0

    return-object v0
.end method
