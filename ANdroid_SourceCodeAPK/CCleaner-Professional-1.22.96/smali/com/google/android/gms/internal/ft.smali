.class public final Lcom/google/android/gms/internal/ft;
.super Lcom/google/android/gms/common/internal/s;

# interfaces
.implements Lcom/google/android/gms/internal/fs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/s",
        "<",
        "Lcom/google/android/gms/internal/fy;",
        ">;",
        "Lcom/google/android/gms/internal/fs;"
    }
.end annotation


# static fields
.field private static a:Lcom/google/android/gms/internal/ax;


# instance fields
.field private final i:Landroid/content/Context;

.field private final j:Lcom/google/android/gms/internal/ga$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/ax;

    const-string/jumbo v1, "FirebaseAuth"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "FirebaseAuth:"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ax;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ft;->a:Lcom/google/android/gms/internal/ax;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/o;Lcom/google/android/gms/internal/ga$a;Lcom/google/android/gms/common/api/c$b;Lcom/google/android/gms/common/api/c$c;)V
    .locals 7

    const/16 v3, 0x70

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/s;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/o;Lcom/google/android/gms/common/api/c$b;Lcom/google/android/gms/common/api/c$c;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/ft;->i:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ft;->j:Lcom/google/android/gms/internal/ga$a;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 0
    .line 2000
    invoke-static {p1}, Lcom/google/android/gms/internal/fy$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fy;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ft;->i:Landroid/content/Context;

    const-string/jumbo v1, "com.google.firebase.auth"

    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final g()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.firebase.auth.api.gms.service.START"

    return-object v0
.end method

.method protected final h()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.firebase.auth.api.internal.IFirebaseAuthService"

    return-object v0
.end method

.method protected final i_()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string/jumbo v0, "firebear.preference"

    invoke-static {v0}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v0, "default"

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    const-string/jumbo v0, "default"

    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :cond_2
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_2

    sget-object v0, Lcom/google/android/gms/internal/ft;->a:Lcom/google/android/gms/internal/ax;

    const-string/jumbo v1, "Loading module via default loading order."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ax;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ft;->i:Landroid/content/Context;

    const-string/jumbo v1, "com.google.firebase.auth"

    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ft;->i:Landroid/content/Context;

    const-string/jumbo v2, "com.google.android.gms.firebase_auth"

    invoke-static {v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lt v1, v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ft;->a:Lcom/google/android/gms/internal/ax;

    const-string/jumbo v1, "Loading remote module."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ax;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "com.google.android.gms"

    :goto_2
    return-object v0

    :sswitch_0
    const-string/jumbo v3, "local"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "default"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_1
    const-string/jumbo v3, "local"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ft;->a:Lcom/google/android/gms/internal/ax;

    const-string/jumbo v1, "Loading fallback module override."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ax;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ft;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ft;->a:Lcom/google/android/gms/internal/ax;

    const-string/jumbo v1, "Loading fallback module."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ax;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ft;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x625df6b -> :sswitch_0
        0x5c13d641 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x625df6b
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public final synthetic j()Lcom/google/android/gms/internal/fy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/common/internal/s;->n()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fy;

    return-object v0
.end method

.method protected final m()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/s;->m()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ft;->j:Lcom/google/android/gms/internal/ga$a;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "com.google.firebase.auth.API_KEY"

    iget-object v2, p0, Lcom/google/android/gms/internal/ft;->j:Lcom/google/android/gms/internal/ga$a;

    .line 1000
    iget-object v2, v2, Lcom/google/android/gms/internal/ga$a;->a:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method
