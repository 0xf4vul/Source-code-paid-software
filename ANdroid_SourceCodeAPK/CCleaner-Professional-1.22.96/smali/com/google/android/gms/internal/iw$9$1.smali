.class final Lcom/google/android/gms/internal/iw$9$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/iw$9;->a(Lcom/google/android/gms/internal/kr;Lcom/google/android/gms/internal/jf;Lcom/google/android/gms/internal/ib;Lcom/google/android/gms/internal/je$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/kr;

.field final synthetic b:Lcom/google/android/gms/internal/je$a;

.field final synthetic c:Lcom/google/android/gms/internal/iw$9;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/iw$9;Lcom/google/android/gms/internal/kr;Lcom/google/android/gms/internal/je$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/iw$9$1;->c:Lcom/google/android/gms/internal/iw$9;

    iput-object p2, p0, Lcom/google/android/gms/internal/iw$9$1;->a:Lcom/google/android/gms/internal/kr;

    iput-object p3, p0, Lcom/google/android/gms/internal/iw$9$1;->b:Lcom/google/android/gms/internal/je$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/iw$9$1;->c:Lcom/google/android/gms/internal/iw$9;

    iget-object v0, v0, Lcom/google/android/gms/internal/iw$9;->a:Lcom/google/android/gms/internal/iw;

    invoke-static {v0}, Lcom/google/android/gms/internal/iw;->d(Lcom/google/android/gms/internal/iw;)Lcom/google/android/gms/internal/jb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/iw$9$1;->a:Lcom/google/android/gms/internal/kr;

    .line 1000
    iget-object v1, v1, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->b()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/iw$9$1;->c:Lcom/google/android/gms/internal/iw$9;

    iget-object v1, v1, Lcom/google/android/gms/internal/iw$9;->a:Lcom/google/android/gms/internal/iw;

    invoke-static {v1}, Lcom/google/android/gms/internal/iw;->e(Lcom/google/android/gms/internal/iw;)Lcom/google/android/gms/internal/je;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/iw$9$1;->a:Lcom/google/android/gms/internal/kr;

    .line 2000
    iget-object v2, v2, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 0
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/iw$9$1;->c:Lcom/google/android/gms/internal/iw$9;

    iget-object v1, v1, Lcom/google/android/gms/internal/iw$9;->a:Lcom/google/android/gms/internal/iw;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/iw;Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/iw$9$1;->b:Lcom/google/android/gms/internal/je$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/je$a;->a(Lcom/google/firebase/database/b;)Ljava/util/List;

    :cond_0
    return-void
.end method
