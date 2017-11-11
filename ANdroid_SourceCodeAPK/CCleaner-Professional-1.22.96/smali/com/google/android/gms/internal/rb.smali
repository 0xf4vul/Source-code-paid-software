.class public final Lcom/google/android/gms/internal/rb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/rc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/qy;

.field b:Z

.field final c:Lcom/google/android/gms/internal/wb;

.field final d:Lcom/google/android/gms/internal/wb;

.field final e:Lcom/google/android/gms/internal/wb;

.field final f:Lcom/google/android/gms/internal/wb;

.field private g:Lcom/google/android/gms/internal/xh$c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/qy;Lcom/google/android/gms/internal/xh;)V
    .locals 3

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/rb$5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/rb$5;-><init>(Lcom/google/android/gms/internal/rb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/rb;->c:Lcom/google/android/gms/internal/wb;

    new-instance v0, Lcom/google/android/gms/internal/rb$6;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/rb$6;-><init>(Lcom/google/android/gms/internal/rb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/rb;->d:Lcom/google/android/gms/internal/wb;

    new-instance v0, Lcom/google/android/gms/internal/rb$7;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/rb$7;-><init>(Lcom/google/android/gms/internal/rb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/rb;->e:Lcom/google/android/gms/internal/wb;

    new-instance v0, Lcom/google/android/gms/internal/rb$8;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/rb$8;-><init>(Lcom/google/android/gms/internal/rb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/rb;->f:Lcom/google/android/gms/internal/wb;

    iput-object p1, p0, Lcom/google/android/gms/internal/rb;->a:Lcom/google/android/gms/internal/qy;

    .line 1000
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/xh;->b(Lcom/google/android/gms/internal/ej;)Lcom/google/android/gms/internal/xh$c;

    move-result-object v0

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/rb;->g:Lcom/google/android/gms/internal/xh$c;

    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->g:Lcom/google/android/gms/internal/xh$c;

    new-instance v1, Lcom/google/android/gms/internal/rb$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/rb$1;-><init>(Lcom/google/android/gms/internal/rb;)V

    new-instance v2, Lcom/google/android/gms/internal/rb$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/rb$2;-><init>(Lcom/google/android/gms/internal/rb;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/xh$c;->a(Lcom/google/android/gms/internal/aek$c;Lcom/google/android/gms/internal/aek$a;)V

    const-string/jumbo v1, "Core JS tracking ad unit: "

    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->a:Lcom/google/android/gms/internal/qy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qy;->g()Lcom/google/android/gms/internal/qw;

    move-result-object v0

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/qw;->c:Ljava/lang/String;

    .line 0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->g:Lcom/google/android/gms/internal/xh$c;

    new-instance v1, Lcom/google/android/gms/internal/rb$3;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/rb$3;-><init>(Lorg/json/JSONObject;)V

    new-instance v2, Lcom/google/android/gms/internal/aek$b;

    invoke-direct {v2}, Lcom/google/android/gms/internal/aek$b;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/xh$c;->a(Lcom/google/android/gms/internal/aek$c;Lcom/google/android/gms/internal/aek$a;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/rb;->b:Z

    return v0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->g:Lcom/google/android/gms/internal/xh$c;

    new-instance v1, Lcom/google/android/gms/internal/rb$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/rb$4;-><init>(Lcom/google/android/gms/internal/rb;)V

    new-instance v2, Lcom/google/android/gms/internal/aek$b;

    invoke-direct {v2}, Lcom/google/android/gms/internal/aek$b;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/xh$c;->a(Lcom/google/android/gms/internal/aek$c;Lcom/google/android/gms/internal/aek$a;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->g:Lcom/google/android/gms/internal/xh$c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xh$c;->l_()V

    return-void
.end method
