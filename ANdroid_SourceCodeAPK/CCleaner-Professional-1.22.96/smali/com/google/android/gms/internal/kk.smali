.class public final Lcom/google/android/gms/internal/kk;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/android/gms/internal/km$a;

.field final b:Lcom/google/android/gms/internal/lm;

.field final c:Lcom/google/android/gms/internal/lm;

.field final d:Lcom/google/android/gms/internal/lf;

.field private final e:Lcom/google/android/gms/internal/lf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/km$a;Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/lm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/kk;->a:Lcom/google/android/gms/internal/km$a;

    iput-object p2, p0, Lcom/google/android/gms/internal/kk;->b:Lcom/google/android/gms/internal/lm;

    iput-object p3, p0, Lcom/google/android/gms/internal/kk;->d:Lcom/google/android/gms/internal/lf;

    iput-object p4, p0, Lcom/google/android/gms/internal/kk;->e:Lcom/google/android/gms/internal/lf;

    iput-object p5, p0, Lcom/google/android/gms/internal/kk;->c:Lcom/google/android/gms/internal/lm;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/lm;)Lcom/google/android/gms/internal/kk;
    .locals 6

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/internal/kk;

    sget-object v1, Lcom/google/android/gms/internal/km$a;->b:Lcom/google/android/gms/internal/km$a;

    move-object v2, p1

    move-object v3, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/kk;-><init>(Lcom/google/android/gms/internal/km$a;Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/lm;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lm;)Lcom/google/android/gms/internal/kk;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/kk;

    sget-object v1, Lcom/google/android/gms/internal/km$a;->d:Lcom/google/android/gms/internal/km$a;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/kk;-><init>(Lcom/google/android/gms/internal/km$a;Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/lm;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/kk;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/kk;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/lm;)Lcom/google/android/gms/internal/kk;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/kk;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/kk;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lm;)Lcom/google/android/gms/internal/kk;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/lm;)Lcom/google/android/gms/internal/kk;
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/kk;

    sget-object v1, Lcom/google/android/gms/internal/km$a;->e:Lcom/google/android/gms/internal/km$a;

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/kk;-><init>(Lcom/google/android/gms/internal/km$a;Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/lm;)V

    return-object v0
.end method

.method public static b(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/lm;)Lcom/google/android/gms/internal/kk;
    .locals 6

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/internal/kk;

    sget-object v1, Lcom/google/android/gms/internal/km$a;->a:Lcom/google/android/gms/internal/km$a;

    move-object v2, p1

    move-object v3, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/kk;-><init>(Lcom/google/android/gms/internal/km$a;Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/lm;)V

    return-object v0
.end method

.method public static b(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/kk;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/kk;->b(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/lm;)Lcom/google/android/gms/internal/kk;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->a:Lcom/google/android/gms/internal/km$a;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/kk;->d:Lcom/google/android/gms/internal/lf;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Change: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
