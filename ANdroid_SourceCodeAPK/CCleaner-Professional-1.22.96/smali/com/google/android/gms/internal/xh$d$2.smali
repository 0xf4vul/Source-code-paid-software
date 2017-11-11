.class final Lcom/google/android/gms/internal/xh$d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aek$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/xh$d;->m_()Lcom/google/android/gms/internal/xh$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/xh$c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xh$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/xh$d$2;->a:Lcom/google/android/gms/internal/xh$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const-string/jumbo v0, "Rejecting reference for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/xh$d$2;->a:Lcom/google/android/gms/internal/xh$c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xh$c;->a()V

    return-void
.end method
