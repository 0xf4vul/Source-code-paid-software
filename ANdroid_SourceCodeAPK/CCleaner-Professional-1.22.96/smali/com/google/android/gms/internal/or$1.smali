.class final Lcom/google/android/gms/internal/or$1;
.super Lcom/google/android/gms/internal/oi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/or;->a(Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/oi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/oi",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/google/android/gms/internal/np;

.field final synthetic d:Lcom/google/android/gms/internal/pn;

.field final synthetic e:Lcom/google/android/gms/internal/or;

.field private f:Lcom/google/android/gms/internal/oi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/oi",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/or;ZZLcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/pn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/or$1;->e:Lcom/google/android/gms/internal/or;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/or$1;->a:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/or$1;->b:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/or$1;->c:Lcom/google/android/gms/internal/np;

    iput-object p5, p0, Lcom/google/android/gms/internal/or$1;->d:Lcom/google/android/gms/internal/pn;

    invoke-direct {p0}, Lcom/google/android/gms/internal/oi;-><init>()V

    return-void
.end method

.method private a()Lcom/google/android/gms/internal/oi;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/oi",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/or$1;->f:Lcom/google/android/gms/internal/oi;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/or$1;->c:Lcom/google/android/gms/internal/np;

    iget-object v1, p0, Lcom/google/android/gms/internal/or$1;->e:Lcom/google/android/gms/internal/or;

    iget-object v2, p0, Lcom/google/android/gms/internal/or$1;->d:Lcom/google/android/gms/internal/pn;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/np;->a(Lcom/google/android/gms/internal/oj;Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/oi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/or$1;->f:Lcom/google/android/gms/internal/oi;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/po;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/po;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/or$1;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/po;->o()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/or$1;->a()Lcom/google/android/gms/internal/oi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/oi;->a(Lcom/google/android/gms/internal/po;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/pq;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/pq;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/or$1;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pq;->e()Lcom/google/android/gms/internal/pq;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/or$1;->a()Lcom/google/android/gms/internal/oi;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/oi;->a(Lcom/google/android/gms/internal/pq;Ljava/lang/Object;)V

    goto :goto_0
.end method
